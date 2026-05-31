class GraphPerson {
  final String id;
  final String name;

  final String? knownAs;

  final String relationship;

  final String status;

  const GraphPerson({
    required this.id,
    required this.name,
    this.knownAs,
    required this.relationship,
    this.status = 'unclaimed',
  });
}
