import 'package:flutter/material.dart';
import 'package:mobile7/constants.dart';

class MainLabel extends StatelessWidget {
  MainLabel({this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Text(
          label,
          style: kMainLabelTextStyle,
        ),
      ),
    );
  }
}
