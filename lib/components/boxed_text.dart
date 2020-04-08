import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BoxedText extends StatelessWidget {
  final Color color;
  final String text;

  BoxedText({this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          decoration: BoxDecoration(color: color),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontFamily: 'montserrat'),
          ),
        )
      ],
    );
  }
}
