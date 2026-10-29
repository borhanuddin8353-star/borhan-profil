create table if not exists public.profiles (
 id bigint primary key,
 name text not null default 'BORHAN UDDIN',
 phone text not null default '01922141412',
 address text not null default 'কৃষ্ণনগর, ঝিকরগাছা, যশোর',
 bio text, photo_url text, facebook_url text, instagram_url text, email text,
 updated_at timestamptz default now()
);
alter table public.profiles enable row level security;
drop policy if exists "Public read profile" on public.profiles;
create policy "Public read profile" on public.profiles for select to anon, authenticated using (true);
drop policy if exists "Authenticated insert profile" on public.profiles;
create policy "Authenticated insert profile" on public.profiles for insert to authenticated with check (auth.uid() is not null);
drop policy if exists "Authenticated update profile" on public.profiles;
create policy "Authenticated update profile" on public.profiles for update to authenticated using (auth.uid() is not null) with check (auth.uid() is not null);
insert into public.profiles(id,name,phone,address,bio) values(1,'BORHAN UDDIN','01922141412','কৃষ্ণনগর, ঝিকরগাছা, যশোর','') on conflict(id) do nothing;
