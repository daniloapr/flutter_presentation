import 'package:aula01/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BoxedText extends StatelessWidget {
  final Color color;
  final String text;

  BoxedText({@required this.text, this.color = AppColors.pink});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          decoration: BoxDecoration(color: color),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontSize: 60, fontFamily: 'montserrat'),
          ),
        )
      ],
    );
  }
}
