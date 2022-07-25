import 'action_model.dart';

class DevCandidate {
  final String name;
  final String phone;
  final int id;
  // Used to define what user profile to show when clicked on (single value to identify any user)
  String fit;
  String description;
  List<CandidateAction> actions;
  String avatar;
  bool newCandidate = true;

  DevCandidate(this.name, this.phone, this.id, this.fit, this.description,
      this.actions, this.avatar);

  static List<DevCandidate> fetchAll() {
    return [
      DevCandidate(
        "Nikki",
        "+336 XX XX XX XX",
        0,
        "Good fit",
        "Good candidate, constructive, smart, and listens to others.",
        [
          CandidateAction(
              "<h4>Nikki likes Flutter<h4>", CandidateActionType.like),
          CandidateAction('Send  the dev test', CandidateActionType.task)
        ],
        "assets/female-avatar.png",
      ),
      DevCandidate(
        "James",
        "+336 XX XX XX XX",
        1,
        "Not a fit",
        "He is not interested in doing some flutter.",
        [CandidateAction('Send a negative answer', CandidateActionType.task)],
        "assets/male-avatar.png",
      ),
      DevCandidate(
        "Elsa",
        "+336 XX XX XX XX",
        2,
        "Maybe",
        "Didn't express herself too much, shy?",
        [
          CandidateAction(
              "<h4>Reconsider in 2 days<h4>", CandidateActionType.task)
        ],
        "assets/female-avatar.png",
      ),
    ];
  }
}
