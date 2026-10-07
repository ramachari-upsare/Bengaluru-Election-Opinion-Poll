create table if not exists public.votes (
 id uuid primary key default gen_random_uuid(),
 candidate_id text not null check (candidate_id in ('ranganath','puttanna')),
 voter_id text not null,
 created_at timestamptz not null default now(),
 unique(voter_id)
);
alter table public.votes enable row level security;
create policy "public can submit votes" on public.votes for insert to anon, authenticated with check (candidate_id in ('ranganath','puttanna') and length(voter_id) between 20 and 80);
create view public.poll_results as select c.candidate_id, coalesce(count(v.id),0)::bigint as vote_count from (values ('ranganath'),('puttanna')) as c(candidate_id) left join public.votes v on v.candidate_id=c.candidate_id group by c.candidate_id;
grant select on public.poll_results to anon, authenticated;
grant insert on public.votes to anon, authenticated;