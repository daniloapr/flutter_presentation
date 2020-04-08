import 'package:aula01/res/dimens.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  final String text;

  MainTitle({Key key, @required this.text}) : super(key: key) {
    assert(text != null, 'MainTitleExeption: text == null');
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 80,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
