import 'package:jots/models/dev_candidate_model.dart';

class Event {
  bool private;
  String name;
  String about;
  String who;
  String description;
  String date;
  String location;
  List<DevCandidate> users;

  Event(this.private, this.name, this.about, this.who, this.description,
      this.date, this.location, this.users);

  static List<Event> fetchAll() {
    return [
      Event(
        true,
        'Feedback',
        'Candidate Group Interview',
        'Dev team',
        'All the candidates were pretty nice, we started with an introduction of Jots, then we all presented ourselves, and the candidates got to ask questions. The session went pretty well.',
        '11/05/2022',
        'Jots HQ',
        DevCandidate.fetchAll(),
      ),
    ];
  }
}
