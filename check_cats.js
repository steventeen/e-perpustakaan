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

async function check() {
  const { data } = await supabase.from('categories').select('*');
  console.log('Categories:', data);
}

check();
