-- SCRIPT SEEDING DATA USER (STUDENT & TEACHER)
-- Jalankan ini di SQL Editor Supabase untuk mengisi data simulasi ke tabel profiles

-- Catatan: id harusnya UUID dari auth.users, tapi untuk simulasi kita pakai UUID dummy.
-- Jika ingin integrasi asli, gunakan Supabase Auth API.

-- Siswa Kelas 7
INSERT INTO profiles (id, full_name, username, grade_level, role) VALUES
(gen_random_uuid(), 'BENZEMA DENIS SEMUEL ROBOT', '7-BENZEMA', '7', 'student'),
(gen_random_uuid(), 'CRISTIAN JULIO ROBOT', '7-CRISTIAN', '7', 'student'),
(gen_random_uuid(), 'DIMESYA FINATHA WANGKO', '7-DIMESYA', '7', 'student'),
(gen_random_uuid(), 'JOSUA VALENTINO CRISNO POLUAKAN', '7-JOSUA', '7', 'student'),
(gen_random_uuid(), 'KILVI SATRIA RENDI RATU', '7-KILVI', '7', 'student'),
(gen_random_uuid(), 'KIRANA KEISIA SONDAKH', '7-KIRANA', '7', 'student'),
(gen_random_uuid(), 'LEIVIA DEA MICHELSI KOROMPIS', '7-LEIVIA', '7', 'student'),
(gen_random_uuid(), 'MIKEYLAH PUTRI MANOPO', '7-MIKEYLAH', '7', 'student'),
(gen_random_uuid(), 'PATRICIA MENTARI TREEPUTRI POLI', '7-PATRICIA', '7', 'student');

-- Siswa Kelas 8
INSERT INTO profiles (id, full_name, username, grade_level, role) VALUES
(gen_random_uuid(), 'EKLESIA WATUSEKE', '8-EKLESIA', '8', 'student'),
(gen_random_uuid(), 'FALENTINO WANGA', '8-FALENTINO', '8', 'student'),
(gen_random_uuid(), 'FERNANDO J. R. TANGKILISAN', '8-FERNANDO', '8', 'student'),
(gen_random_uuid(), 'GRASCIA EUNIKE SOYOW', '8-GRASCIA', '8', 'student'),
(gen_random_uuid(), 'HUTRI AMSAL SALOMO PANTOW', '8-HUTRI', '8', 'student'),
(gen_random_uuid(), 'KRISMA MONINTJA', '8-KRISMA', '8', 'student'),
(gen_random_uuid(), 'MEISA MIKHA TUMBOL', '8-MEISA', '8', 'student'),
(gen_random_uuid(), 'MICHAEL RAWIS', '8-MICHAEL', '8', 'student'),
(gen_random_uuid(), 'PRINCE A. G. ONDANG', '8-PRINCE', '8', 'student'),
(gen_random_uuid(), 'QUEENSHE V. WALANGITAN', '8-QUEENSHE', '8', 'student'),
(gen_random_uuid(), 'RIHANA RATU', '8-RIHANA', '8', 'student'),
(gen_random_uuid(), 'SERAFINA FARAH LUMINTANG', '8-SERAFINA', '8', 'student'),
(gen_random_uuid(), 'SETLY RAWIS', '8-SETLY', '8', 'student'),
(gen_random_uuid(), 'SYALOMITA SESILIA RATU', '8-SYALOMITA', '8', 'student'),
(gen_random_uuid(), 'GABRIEL MAHMUD', '8-GABRIEL', '8', 'student');

-- Siswa Kelas 9
INSERT INTO profiles (id, full_name, username, grade_level, role) VALUES
(gen_random_uuid(), 'Efrina I. Meruntu', '9-Efrina', '9', 'student'),
(gen_random_uuid(), 'Gwen Christzelda Stealy Mintje', '9-Gwen', '9', 'student'),
(gen_random_uuid(), 'Jenli A Walangitan', '9-Jenli', '9', 'student'),
(gen_random_uuid(), 'Karmila Miranda Poli', '9-Karmila', '9', 'student'),
(gen_random_uuid(), 'Lifiana V. Lumintang', '9-Lifiana', '9', 'student'),
(gen_random_uuid(), 'MIKHA TESALONIKA SAGAI', '9-MIKHA', '9', 'student'),
(gen_random_uuid(), 'Natanael C. laluyan', '9-Natanael', '9', 'student'),
(gen_random_uuid(), 'Nikita Roring', '9-Nikita', '9', 'student'),
(gen_random_uuid(), 'Revani Rumengan', '9-Revani', '9', 'student'),
(gen_random_uuid(), 'Saradeby Dersnita Rawung', '9-Saradeby', '9', 'student'),
(gen_random_uuid(), 'Syalomitha Rondonuwu', '9-Syalomitha', '9', 'student'),
(gen_random_uuid(), 'Verona Credola Manopo', '9-Verona', '9', 'student'),
(gen_random_uuid(), 'Veronika Meylani Walangitan', '9-Veronika', '9', 'student'),
(gen_random_uuid(), 'Vionita Rima Kaligis', '9-Vionita', '9', 'student');

-- GURU
INSERT INTO profiles (id, full_name, username, nip, role) VALUES
(gen_random_uuid(), 'RONY LUKY UMBOH, S,Pd', '197203122006041017', '197203122006041017', 'teacher'),
(gen_random_uuid(), 'ALFRIST RUNTUWENE, S.Pd', '197804262009031002', '197804262009031002', 'teacher'),
(gen_random_uuid(), 'DEIBY PAULA POLUAKAN, S.Pd', '198412192014082001', '198412192014082001', 'teacher'),
(gen_random_uuid(), 'FICHER FERNANDO TUMBEL, S.Pd', '199302102024211000', '199302102024211000', 'teacher'),
(gen_random_uuid(), 'JENIFER WANDA LUMOINDONG, S.Pd', '199508262024212006', '199508262024212006', 'teacher'),
(gen_random_uuid(), 'NOVALDY SAULUNG POLUAKAN, S.Pd', '199811062025211039', '199811062025211039', 'teacher'),
(gen_random_uuid(), 'JERY MANDAGI, S.Pd', '198801092025211064', '198801092025211064', 'teacher'),
(gen_random_uuid(), 'NOVEL IMANUEL LUMINTANG, S.Pd', '199211232025211055', '199211232025211055', 'teacher'),
(gen_random_uuid(), 'FRISKA LONTENG, S.Pd', '198807032025212079', '198807032025212079', 'teacher'),
(gen_random_uuid(), 'Sutari Nofrani Sumoked, S.Pd', '199711272025212075', '199711272025212075', 'teacher'),
(gen_random_uuid(), 'YOUDI FERDIAN PONTOH, S.Pd', 'GURU-GTT', 'GURU-GTT', 'teacher');
