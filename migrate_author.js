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

async function migrate() {
    console.log('🔄 Migrating: changing author column to TEXT...');
    const { error } = await supabase.rpc('exec_sql', { 
        sql: 'ALTER TABLE books ALTER COLUMN author TYPE TEXT;' 
    });
    if (error) {
        console.error('Migration failed (maybe rpc not exist):', error.message);
        // Fallback: If rpc fails, we can't do DDL. 
        // I will truncate author in the crawler instead.
    } else {
        console.log('✅ Migration successful!');
    }
}

migrate();
