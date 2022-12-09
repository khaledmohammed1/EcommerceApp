import 'package:flutter/material.dart';

class SetionTitle extends StatelessWidget {
  final String title;
  const SetionTitle({
    Key? key, required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          )),
    );
  }
}