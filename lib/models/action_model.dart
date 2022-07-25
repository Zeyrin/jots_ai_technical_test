class CandidateAction {
  String text;
  CandidateActionType actionType;

  CandidateAction(this.text, this.actionType);
}

enum CandidateActionType { like, task }
