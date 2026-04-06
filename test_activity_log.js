import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';

const envPath = path.resolve(process.cwd(), '.env');
const env = {};
if (fs.existsSync(envPath)) {
  fs.readFileSync(envPath, 'utf-8').split('\n').forEach(l => {
    const [k, v] = l.split('=');
    if (k && v) env[k.trim()] = v.trim().replace(/^['"]|['"]$/g, '');
  });
}

const supabase = createClient(env.VITE_SUPABASE_URL, env.VITE_SUPABASE_ANON_KEY);

async function testLog() {
  console.log('🧪 Testing activity_logs entry...');
  const { error } = await supabase.from('activity_logs').insert({
    username: 'system_test',
    action_type: 'system',
    description: 'Testing log system integration'
  });

  if (error) {
     console.error('❌ Log failed:', error.message);
     if (error.code === '42P01') {
        console.log('💡 Table NOT found. Please run the SQL migration in Supabase Dashboard.');
     }
  } else {
     console.log('✅ Log SUCCESS! Table is ready.');
  }
}

testLog();
