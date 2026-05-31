enum RelationshipEdgeType {
  parentChild,
  spouse,
  sibling,
}

class RelationshipEdge {
  final String fromId;
  final String toId;
  final RelationshipEdgeType type;

  const RelationshipEdge({
    required this.fromId,
    required this.toId,
    required this.type,
  });
}
