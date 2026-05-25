-- Vansha V2 Trust / Governance Schema

create table if not exists identity_claims (
  id uuid primary key default gen_random_uuid(),
  entity_id uuid references human_entities(id) on delete cascade,
  claimed_by_user_id uuid,
  claim_method text not null,
  verification_status text default 'pending',
  verification_score numeric,
  approved_by uuid,
  created_at timestamptz default now()
);

create table if not exists access_policies (
  id uuid primary key default gen_random_uuid(),
  resource_type text not null,
  resource_id uuid,
  viewer_scope text,
  permission text,
  approval_required boolean default false,
  expires_at timestamptz,
  created_at timestamptz default now()
);

create table if not exists invites (
  id uuid primary key default gen_random_uuid(),
  space_id uuid references spaces(id) on delete cascade,
  entity_id uuid references human_entities(id) on delete cascade,
  invited_by uuid,
  invite_channel text,
  contact text,
  status text default 'pending',
  token text,
  expires_at timestamptz,
  created_at timestamptz default now()
);

create table if not exists change_requests (
  id uuid primary key default gen_random_uuid(),
  target_entity_id uuid references human_entities(id) on delete cascade,
  requested_by uuid,
  change_type text,
  payload jsonb,
  approval_status text default 'pending',
  reviewed_by uuid,
  created_at timestamptz default now()
);

create table if not exists audit_log (
  id uuid primary key default gen_random_uuid(),
  actor_id uuid,
  action text not null,
  resource_type text,
  resource_id uuid,
  payload jsonb,
  created_at timestamptz default now()
);

create table if not exists knowledge_graph_facts (
  id uuid primary key default gen_random_uuid(),
  subject text,
  predicate text,
  object text,
  confidence numeric,
  source text,
  created_at timestamptz default now()
);

create table if not exists memories (
  id uuid primary key default gen_random_uuid(),
  entity_id uuid references human_entities(id) on delete cascade,
  memory_type text,
  content_url text,
  description text,
  event_date date,
  added_by uuid,
  created_at timestamptz default now()
);