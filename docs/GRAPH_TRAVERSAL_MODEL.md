# Vansha Graph Traversal Model

## Principle
Relationship graph traversal is permission-aware.

## Traversal Rules
- Immediate connected nodes may expose tier-1 visibility
- Deeper branch traversal requires explicit approval
- Access requests notify branch owner/admin
- Traversal is lazy-loaded for performance

## Access States
- visible
- restricted
- pending_request
- denied
- blocked
