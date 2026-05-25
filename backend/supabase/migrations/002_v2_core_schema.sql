-- Vansha V2 Core Schema Foundation
create extension if not exists pgcrypto;

create table if not exists human_entities (
  id uuid primary key default gen_random_uuid(),
  entity_type text not null,
  legal_name text not null,
  display_name text,
  preferred_name text,
  gender text,
  dob date,
  dod date,
  alive_status text default 'alive',
  phone text,
  email text,
  city text,
  state text,
  country text,
  native_place text,
  mother_tongue text,
  cultural_origin text,
  profile_photo_url text,
  created_by uuid,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists relationship_edges (
  id uuid primary key default gen_random_uuid(),
  from_entity_id uuid references human_entities(id) on delete cascade,
  to_entity_id uuid references human_entities(id) on delete cascade,
  canonical_relationship text not null,
  relationship_label text,
  directionality text default 'uni',
  strength_score numeric,
  trust_score numeric,
  status text default 'active',
  visibility_scope text,
  created_by uuid,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists spaces (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  slug text unique,
  space_type text not null,
  description text,
  owner_entity_id uuid references human_entities(id),
  privacy_mode text,
  cover_image text,
  created_at timestamptz default now(),
  updated_at timestamptz default now()
);

create table if not exists space_memberships (
  id uuid primary key default gen_random_uuid(),
  space_id uuid references spaces(id) on delete cascade,
  entity_id uuid references human_entities(id) on delete cascade,
  role text,
  status text,
  invited_by uuid,
  joined_at timestamptz
);

create table if not exists relationship_terms (
  id uuid primary key default gen_random_uuid(),
  term text not null,
  canonical_meaning text not null,
  language text,
  state text,
  country text,
  region_scope text,
  usage_scope text,
  community_verified boolean default false,
  created_at timestamptz default now()
);

create table if not exists viewer_relationship_context (
  id uuid primary key default gen_random_uuid(),
  viewer_entity_id uuid references human_entities(id) on delete cascade,
  target_entity_id uuid references human_entities(id) on delete cascade,
  canonical_relationship text not null,
  display_term text,
  language text,
  custom_defined boolean default false
);

insert into relationship_terms (term, canonical_meaning, language, state, country, region_scope, usage_scope)
values
('Papa', 'father', 'Hindi', null, 'India', 'pan_india', 'common'),
('Amma', 'mother', 'Tamil', 'Tamil Nadu', 'India', 'regional', 'common'),
('Amma', 'mother', 'Telugu', 'Andhra Pradesh', 'India', 'regional', 'common'),
('Achan', 'father', 'Malayalam', 'Kerala', 'India', 'regional', 'common'),
('Appa', 'father', 'Tamil', 'Tamil Nadu', 'India', 'regional', 'common'),
('Nanna', 'father', 'Telugu', 'Andhra Pradesh', 'India', 'regional', 'common'),
('Mama', 'uncle', 'Hindi', null, 'India', 'pan_india', 'common'),
('Babai', 'paternal_uncle', 'Telugu', 'Andhra Pradesh', 'India', 'regional', 'common'),
('Machan', 'brother_in_law', 'Tamil', 'Tamil Nadu', 'India', 'regional', 'common'),
('Chettan', 'elder_brother', 'Malayalam', 'Kerala', 'India', 'regional', 'common');