import 'package:flutter/material.dart';
import 'package:jots/models/dev_candidate_model.dart';
import 'package:jots/themes.dart';

//This vie handles dynamically the user's profile according to the data model we will get from database (here hard coded in the model)
class WhoViewScreen extends StatefulWidget {
  final DevCandidate candidate;

  const WhoViewScreen({Key? key, required this.candidate}) : super(key: key);

  @override
  State<WhoViewScreen> createState() => _WhoViewScreenState();
}

class _WhoViewScreenState extends State<WhoViewScreen> {
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
        title: const Text("Who"),
      ),
    );
  }
}
