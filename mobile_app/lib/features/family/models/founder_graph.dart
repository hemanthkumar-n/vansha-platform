import '../domain/graph_person.dart';
import '../domain/relationship_edge.dart';

class FounderGraph {
  static final people = <GraphPerson>[
    GraphPerson(
      id: 'prasad',
      name: 'Natakam Malakonda Prasad',
      knownAs: 'Nanna',
      relationship: 'Father',
    ),
    GraphPerson(
      id: 'sudharani',
      name: 'Sudharani',
      knownAs: 'Amma',
      relationship: 'Mother',
    ),
    GraphPerson(
      id: 'hemanth',
      name: 'Hemanth Kumar',
      knownAs: 'Hemanth',
      relationship: 'YOU',
    ),
    GraphPerson(
      id: 'keerthi',
      name: 'Keerthi Doguparti',
      knownAs: 'Keerthi',
      relationship: 'Spouse',
    ),
    GraphPerson(
      id: 'yuvan',
      name: 'Yuvan Simha',
      knownAs: 'Yuvan',
      relationship: 'Son',
    ),
    GraphPerson(
      id: 'divya',
      name: 'Divya Bharathi',
      knownAs: 'Chelli',
      relationship: 'Younger Sister',
    ),
    GraphPerson(
      id: 'kamesh',
      name: 'Buduri Kamesh',
      knownAs: 'Kamesh Bava',
      relationship: 'Brother In Law',
    ),
  ];

  static final edges = <RelationshipEdge>[
    RelationshipEdge(
      fromId: 'prasad',
      toId: 'hemanth',
      type: RelationshipEdgeType.parentChild,
    ),
    RelationshipEdge(
      fromId: 'sudharani',
      toId: 'hemanth',
      type: RelationshipEdgeType.parentChild,
    ),
    RelationshipEdge(
      fromId: 'hemanth',
      toId: 'keerthi',
      type: RelationshipEdgeType.spouse,
    ),
    RelationshipEdge(
      fromId: 'hemanth',
      toId: 'yuvan',
      type: RelationshipEdgeType.parentChild,
    ),
    RelationshipEdge(
      fromId: 'keerthi',
      toId: 'yuvan',
      type: RelationshipEdgeType.parentChild,
    ),
    RelationshipEdge(
      fromId: 'hemanth',
      toId: 'divya',
      type: RelationshipEdgeType.sibling,
    ),
    RelationshipEdge(
      fromId: 'divya',
      toId: 'kamesh',
      type: RelationshipEdgeType.spouse,
    ),
  ];
}
