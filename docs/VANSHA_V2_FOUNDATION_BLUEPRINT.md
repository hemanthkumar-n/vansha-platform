# Vansha V2 Foundation Blueprint

## Vision
Vansha is a Human Relationship Intelligence Platform.

## Core Domain Model

### Human Entities
Supports users, relatives, ancestors, children, placeholders, deceased members, and external contacts.

### Relationship Graph
Canonical relationships:
- father
- mother
- spouse
- child
- brother
- sister
- maternal_uncle
- paternal_uncle
- brother_in_law
- guardian
- friend
- custom

### Cultural Relationship Intelligence
Examples:
- Achan → Father
- Appa → Father
- Papa → Father (Pan-India)
- Amma → Mother (multi-language)
- Mama / Mamaji / Babai / Machan / Chettan

Design rule:
Canonical relationship != display term.

### Viewer-Specific Relationship Context
Same person may be seen differently:
- viewer A → Mama
- viewer B → Anna
- viewer C → Uncle

### Collaborative Spaces
Supports:
- Family spaces
- Friend circles
- Events
- Legacy archives

### Trust & Claims
Prevent fake ownership with claim verification.

### Privacy
Branch-level access control.

### Future AI
Knowledge graph + relationship semantics engine.
