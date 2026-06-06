-- Qamara Supabase setup
-- 1) Buat project Supabase
-- 2) Jalankan SQL ini di SQL Editor
-- 3) Aktifkan Email Auth atau gunakan anonymous/local identity sesuai kebutuhan MVP

create table if not exists qamara_profiles (
  id uuid primary key default gen_random_uuid(),
  device_id text unique not null,
  profile jsonb not null default '{}'::jsonb,
  premium jsonb not null default '{"active": false, "plan": "free"}'::jsonb,
  updated_at timestamptz default now()
);

create table if not exists qamara_logs (
  id uuid primary key default gen_random_uuid(),
  device_id text not null,
  log jsonb not null,
  created_at timestamptz default now()
);

alter table qamara_profiles enable row level security;
alter table qamara_logs enable row level security;

-- MVP demo policy. Untuk produksi, ganti dengan auth.uid() dan tabel user.
create policy if not exists "MVP read profiles" on qamara_profiles for select using (true);
create policy if not exists "MVP upsert profiles" on qamara_profiles for insert with check (true);
create policy if not exists "MVP update profiles" on qamara_profiles for update using (true);
create policy if not exists "MVP read logs" on qamara_logs for select using (true);
create policy if not exists "MVP insert logs" on qamara_logs for insert with check (true);
create policy if not exists "MVP delete logs" on qamara_logs for delete using (true);
