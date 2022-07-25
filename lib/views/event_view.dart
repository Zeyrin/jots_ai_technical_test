import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jots/components/candidate_container.dart';
import 'package:jots/models/dev_candidate_model.dart';
import 'package:jots/themes.dart';
import 'package:jots/views/calendar_view.dart';
import 'package:jots/views/candidate_view.dart';
import 'package:jots/views/feedback_view.dart';
import 'package:jots/views/login_view.dart';
import 'package:jots/views/map_view.dart';
import 'package:jots/views/who_view.dart';

import '../models/event_model.dart';
import 'about_view.dart';

//This view handles displaying an event with all its properties (defined in event_model.dart)
class EventViewScreen extends StatefulWidget {
  const EventViewScreen({Key? key}) : super(key: key);

  @override
  State<EventViewScreen> createState() => _EventViewScreenState();
}

class _EventViewScreenState extends State<EventViewScreen> {
  @override
  Widget build(BuildContext context) {
    final events = Event.fetchAll();
    final event = events.first;
    // Just loading the data here for example purposes, would not do it due to added charge to build function since it can be called multiple times
    final candidates = DevCandidate.fetchAll();
    final candidate = candidates.first;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: MyThemes.secondaryColor),
        padding: const EdgeInsets.all(18.0),
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FeedbackViewScreen(
                              candidate: candidate,
                            ),
                          ),
                        );
                      },
                    text: '${event.name} ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: MyThemes.primary,
                    ),
                  ),
                  const TextSpan(
                    text: 'about ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: MyThemes.secondary,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AboutViewScreen(
                              candidate: candidate,
                            ),
                          ),
                        );
                      },
                    text: '${event.about} ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: MyThemes.primary,
                    ),
                  ),
                  const TextSpan(
                    text: 'for the ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: MyThemes.secondary,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => WhoViewScreen(
                              candidate: candidate,
                            ),
                          ),
                        );
                      },
                    text: '${event.who} ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: MyThemes.primary,
                    ),
                  ),
                  const TextSpan(
                    text: 'with candidates ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: MyThemes.secondary,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CandidateViewScreen(
                              candidate: candidate,
                            ),
                          ),
                        );
                      },
                    text: '${event.users.first.name}, ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: MyThemes.primary,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CandidateViewScreen(
                              candidate: event.users[1],
                            ),
                          ),
                        );
                      },
                    text: '${event.users[1].name} ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: MyThemes.primary,
                    ),
                  ),
                  const TextSpan(
                    text: 'and ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: MyThemes.secondary,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CandidateViewScreen(
                              candidate: event.users[2],
                            ),
                          ),
                        );
                      },
                    text: '${event.users[2].name}, ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: MyThemes.primary,
                    ),
                  ),
                  const TextSpan(
                    text: 'on ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: MyThemes.secondary,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CalendarViewScreen(id: 0),
                          ),
                        );
                      },
                    text: '${event.date} ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: MyThemes.primary,
                    ),
                  ),
                  const TextSpan(
                    text: 'at ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: MyThemes.secondary,
                    ),
                  ),
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MapViewScreen(),
                          ),
                        );
                      },
                    text: '${event.location}. ',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: MyThemes.primary,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: MyThemes.accent,
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: event.description,
                      style: const TextStyle(
                        fontSize: 15,
                        color: MyThemes.secondary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    margin: const EdgeInsets.only(right: 27),
                    child: Column(
                      children: [
                        RichText(
                          text: const TextSpan(
                            text: 'Dev\n',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: MyThemes.accentColor,
                            ),
                            children: [
                              TextSpan(
                                text: 'Candidate',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: MyThemes.accentColor,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: candidates.length,
                      itemBuilder: (_, int index) {
                        return CandidateContainer(candidate: candidates[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              child: Text(
                '· new candidates',
                style: TextStyle(color: MyThemes.accent),
              ),
            ),
            const Divider(
              color: MyThemes.accent,
            ),
            Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const FaIcon(
                        FontAwesomeIcons.solidCommentDots,
                        color: MyThemes.secondary,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FeedbackViewScreen(
                                      candidate: candidate,
                                    ),
                                  ),
                                );
                              },
                            text: '  ${event.name} ',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: MyThemes.secondary,
                            ),
                          ),
                          const TextSpan(
                            text: '· Type',
                            style: TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(192, 192, 192, 100),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: const FaIcon(
                        FontAwesomeIcons.userLock,
                        color: MyThemes.secondary,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MapViewScreen(),
                                  ),
                                );
                              },
                            text: 'Jots ',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: MyThemes.secondary,
                            ),
                          ),
                          const TextSpan(
                            text: '(Private)',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: MyThemes.secondary),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      color: MyThemes.primary,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginViewScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
