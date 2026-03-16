-- ================================================
-- EXECUTE ESTE SQL NO SUPABASE SQL EDITOR
-- Acesse: supabase.com > seu projeto > SQL Editor
-- Cole tudo e clique em "Run"
-- ================================================

-- 1. Tabela da coleção do usuário
create table if not exists collection (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references auth.users(id) on delete cascade not null,
  shirt_id text not null,
  club_id text not null,
  photo_url text,
  added_at timestamptz default now(),
  unique(user_id, shirt_id)
);

-- 2. Segurança: cada usuário só vê/edita sua coleção
alter table collection enable row level security;

create policy "Usuário vê sua coleção"
  on collection for select
  using (auth.uid() = user_id);

create policy "Usuário adiciona à sua coleção"
  on collection for insert
  with check (auth.uid() = user_id);

create policy "Usuário atualiza sua coleção"
  on collection for update
  using (auth.uid() = user_id);

create policy "Usuário remove da sua coleção"
  on collection for delete
  using (auth.uid() = user_id);

-- 3. Storage bucket para fotos das camisas
insert into storage.buckets (id, name, public)
values ('shirt-photos', 'shirt-photos', true)
on conflict do nothing;

-- Policy: usuário faz upload só na sua pasta
create policy "Upload na própria pasta"
  on storage.objects for insert
  with check (
    bucket_id = 'shirt-photos' and
    auth.uid()::text = (storage.foldername(name))[1]
  );

-- Policy: qualquer um pode ver as fotos (URLs públicas)
create policy "Fotos públicas"
  on storage.objects for select
  using (bucket_id = 'shirt-photos');

-- Policy: usuário deleta só as próprias fotos
create policy "Deletar próprias fotos"
  on storage.objects for delete
  using (
    bucket_id = 'shirt-photos' and
    auth.uid()::text = (storage.foldername(name))[1]
  );
