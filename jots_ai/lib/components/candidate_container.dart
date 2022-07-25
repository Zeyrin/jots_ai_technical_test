import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jots/models/dev_candidate_model.dart';

import '../models/action_model.dart';
import '../themes.dart';
import '../views/candidate_view.dart';
import 'candidate_action_row.dart';

class CandidateContainer extends StatelessWidget {
  const CandidateContainer({
    Key? key,
    required this.candidate,
  }) : super(key: key);

  final DevCandidate candidate;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
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
                          builder: (context) => CandidateViewScreen(
                            candidate: candidate,
                          ),
                        ),
                      );
                    },
                  text: '· ${candidate.name} ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: MyThemes.newColor,
                  ),
                ),
                TextSpan(
                  text: '· ${candidate.phone} ',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: MyThemes.accent,
                  ),
                ),
                TextSpan(
                  text: '· ${candidate.fit} ',
                  style: const TextStyle(
                    fontSize: 13,
                    color: MyThemes.accent,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(211, 211, 211, 100),
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Column(
                children: List<CandidateActionRow>.generate(
                    candidate.actions.length, (int index) {
              final Icon icon;
              var action = candidate.actions.elementAt(index);
              switch (action.actionType) {
                case CandidateActionType.like:
                  icon = const Icon(
                    Icons.favorite,
                    color: MyThemes.highlight,
                  );
                  break;
                case CandidateActionType.task:
                  icon = const Icon(Icons.checklist);
                  break;
                default:
                  icon = const Icon(Icons.question_mark);
                  break;
              }
              return CandidateActionRow(
                  icon: icon, candidate: candidate, text: action.text);
            })),
          ),
        ],
      ),
    );
  }
}
