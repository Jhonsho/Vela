-- Run once in the Supabase SQL Editor for this project.
create table public.wishes (
  id bigint generated always as identity primary key,
  display_name text,
  message text not null,
  created_at timestamptz not null default now(),
  constraint wishes_name_length check (display_name is null or char_length(display_name) <= 60),
  constraint wishes_message_length check (char_length(message) between 1 and 500)
);

alter table public.wishes enable row level security;

-- Visitors may submit a wish, but no public browser role can read, change,
-- or delete messages. The project owner can review them in the Supabase dashboard.
revoke all on table public.wishes from public, anon, authenticated;
grant insert on table public.wishes to anon;
grant usage, select on sequence public.wishes_id_seq to anon;

create policy "Visitors can submit wishes"
  on public.wishes
  for insert
  to anon
  with check (
    char_length(message) between 1 and 500
    and (display_name is null or char_length(display_name) <= 60)
  );
