# Vansha Graph Visibility Model

## Product Principle
Vansha is an interactive living family graph, not a static family tree.

Graph exploration must balance discovery, privacy, performance, and viral growth.

## Branch Expansion Model
When a connected person joins and claims their profile, limited branch expansion becomes possible.

Example:
- Hemanth invites Ravi
- Ravi claims profile
- Ravi becomes connected in shared graph context

Default visible first-degree preview may include:
- parents
- spouse
- children
- sibling count (optionally names hidden)

Deeper branches remain permission-controlled.

## Access Expansion Workflow
Example:
- Hemanth clicks Ravi sibling branch
- Access restricted
- Request branch access prompt shown
- Notification sent to Ravi
- Ravi approves or denies

## Visibility Tiers
### Tier 1 — Connected Preview
Visible automatically:
- direct immediate relatives
- relationship summary
- limited branch metadata

### Tier 2 — Approved Branch Access
Visible after explicit approval:
- sibling identities
- branch traversal
- extended relatives

### Tier 3 — Shared Administration
Visible via governance role:
- collaborative editing
- merge operations
- branch management

## Privacy Controls
Per person / per space controls:
- show parents
- show spouse
- show children
- hide sibling names
- hide descendants
- branch locked

## Growth Mechanics
Permission-gated exploration creates natural viral loops.

Example:
A denied branch access becomes an approval request and engagement notification.

## Anti-abuse Rules
- request cooldowns
- pending request states
- block controls
- spam prevention

## Performance Principles
Large family graphs must use lazy loading.
Never render full graph trees by default.
Expand branches on demand.
