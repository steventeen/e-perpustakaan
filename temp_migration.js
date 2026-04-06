import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';

// Read .env
const envPath = path.resolve(process.cwd(), '.env');
const env = {};
if (fs.existsSync(envPath)) {
  fs.readFileSync(envPath, 'utf-8').split('\n').forEach(l => {
    const [k, v] = l.split('=');
    if (k && v) env[k.trim()] = v.trim().replace(/^['"]|['"]$/g, '');
  });
}

const supabase = createClient(env.VITE_SUPABASE_URL, env.VITE_SUPABASE_ANON_KEY);

async function setup() {
  console.log('Establishing activity_logs table...');
  
  // Note: Standard Supabase JS client doesn't support direct SQL execution.
  // We'll try to insert a test record, if the table doesn't exist it will error.
  // Then we inform the user to run the SQL in their dashboard if not found.
  
  const { error } = await supabase.from('activity_logs').select('id').limit(1);
  if (error && error.code === '42P01') {
    console.error('Table activity_logs does not exist. Please run the SQL in your Supabase Dashboard:');
    console.log(`
      CREATE TABLE activity_logs (
        id SERIAL PRIMARY KEY,
        user_id UUID REFERENCES auth.users(id),
        username TEXT,
        action_type TEXT,
        description TEXT,
        created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
      );
      ALTER TABLE activity_logs ENABLE ROW LEVEL SECURITY;
      CREATE POLICY "Anyone can insert logs" ON activity_logs FOR INSERT WITH CHECK (true);
      CREATE POLICY "Admins can view all logs" ON activity_logs FOR SELECT USING (true);
    `);
    
    // Attempting to use a common RPC if exists
    console.log('Attempting to use rpc("exec_sql")...');
    const { error: rpcErr } = await supabase.rpc('exec_sql', { 
       sql: `CREATE TABLE IF NOT EXISTS activity_logs (id SERIAL PRIMARY KEY, user_id UUID REFERENCES auth.users(id), username TEXT, action_type TEXT, description TEXT, created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP);` 
    });
    if (rpcErr) console.error('RPC exec_sql failed:', rpcErr.message);
    else console.log('RPC success!');
  } else {
    console.log('Table activity_logs already exists or could not be verified.');
  }
}

setup();
