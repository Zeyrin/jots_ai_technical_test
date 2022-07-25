import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:jots/components/new_container.dart';
import 'package:jots/models/dev_candidate_model.dart';
import 'package:jots/themes.dart';

class CandidateActionRow extends StatelessWidget {
  final Icon icon;
  final DevCandidate candidate;
  final String text;

  const CandidateActionRow(
      {required this.icon, required this.candidate, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: icon,
        ),
        Expanded(
          child: Center(
            child: Container(
              child: Html(
                data: text,
                style: {
                  "h4": Style(
                    color: MyThemes.primary,
                  ),
                },
              ),
            ),
          ),
        ),
        const NewContainer(),
      ],
    );
  }
}
