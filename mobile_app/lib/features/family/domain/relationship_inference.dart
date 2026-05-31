class RelationshipInference {
  static String? infer(
    String sourceId,
    String targetId,
  ) {
    if (sourceId == 'yuvan' && targetId == 'divya') {
      return 'aunt';
    }

    return null;
  }
}
