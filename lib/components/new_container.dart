import 'package:flutter/material.dart';
import 'package:jots/themes.dart';

class NewContainer extends StatelessWidget {
  const NewContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Text('(new)',
                style: TextStyle(fontSize: 12, color: MyThemes.newColor))));
  }
}
