import { supabase } from '../lib/supabase';
import { safeParseStorage, setStorage } from './storage';

/**
 * Log user activity to Supabase and LocalStorage
 * @param {string} user_id - The unique ID of the user (UUID)
 * @param {string} username - The username (NIS/NIP)
 * @param {string} action_type - 'book', 'ai', 'system', 'circulation'
 * @param {string} description - Detailed text of the action
 */
export const logActivity = async (user_id, username, action_type, description) => {
    // 1. Log to console for debugging
    console.log(`[LOG] ${username} (${action_type}): ${description}`);

    // 2. Persist to LocalStorage (Fallback / Immediate View)
    try {
        const localLogs = safeParseStorage('epus_activity_logs', [])

        const newLog = {
            id: Date.now(),
            user_id,
            username,
            action_type,
            description,
            created_at: new Date().toISOString()
        };
        localLogs.unshift(newLog);
        setStorage('epus_activity_logs', localLogs.slice(0, 100)) // keep last 100

    } catch (e) {
        console.error('Local log failed:', e);
    }

    // 3. Persist to Supabase Table (Persistent Database)
    if (supabase) {
        try {
            const { error } = await supabase.from('activity_logs').insert({
                user_id,
                username,
                action_type,
                description
            });
            if (error && error.code === '42P01') {
                console.warn('⚠️ Table activity_logs does not exist. Activity log only saved locally.');
            } else if (error) {
                console.error('Supabase log error:', error.message);
            }
        } catch (e) {
            console.error('Supabase connection error during log:', e);
        }
    }
}
