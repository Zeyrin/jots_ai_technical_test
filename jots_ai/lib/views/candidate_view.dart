import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jots/models/dev_candidate_model.dart';
import 'package:jots/themes.dart';

//This vie handles dynamically the user's profile according to the data model we will get from database (here hard coded in the model)
class CandidateViewScreen extends StatefulWidget {
  final DevCandidate candidate;

  const CandidateViewScreen({Key? key, required this.candidate})
      : super(key: key);

  @override
  State<CandidateViewScreen> createState() => _CandidateViewScreenState();
}

class _CandidateViewScreenState extends State<CandidateViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleTextStyle:
            const TextStyle(color: MyThemes.secondary, fontSize: 18),
        iconTheme: const IconThemeData(color: MyThemes.secondary),
        elevation: 0,
        backgroundColor: MyThemes.noColor,
        title: const Text("User profile"),
      ),
      body: ListView(
        children: [
          CircleAvatar(
            radius: 120,
            backgroundImage: AssetImage(widget.candidate.avatar),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: Column(
              children: [
                Text(
                    style: const TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: MyThemes.primary),
                    widget.candidate.name),
                Text(widget.candidate.description),
              ],
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                icon: const FaIcon(FontAwesomeIcons.github),
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(MyThemes.primary),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                ),
                label: const Text(
                  "GitHub",
                ),
              ),
              ElevatedButton.icon(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(MyThemes.primary),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                ),
                label: const Text(
                  "LinkedIn",
                ),
              ),
              ElevatedButton.icon(
                icon: const FaIcon(FontAwesomeIcons.atlassian),
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(MyThemes.primary),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  ),
                ),
                label: const Text(
                  "Atlassian",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
