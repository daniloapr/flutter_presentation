import 'package:aula01/res/dimens.dart';
import 'package:flutter/material.dart';

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
        fontSize: Dimens.main_title_text_size,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}
