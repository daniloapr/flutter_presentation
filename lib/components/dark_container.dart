import 'package:aula01/res/colors.dart';
import 'package:aula01/res/images.dart';
import 'package:flutter/material.dart';

class DarkContainer extends StatelessWidget {
  final Widget child;

  const DarkContainer({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _margin = _width / 16.0;
    return Container(
      color: AppColors.black,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned(
            top: 10,
            right: 30,
            child: Image.asset(AppImages.logo),
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.all(_margin),
            child: Stack(
              children: <Widget>[
                if (child != null) child,
              ],
            ),
          )
        ],
      ),
    );
  }
}
