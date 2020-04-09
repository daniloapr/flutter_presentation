import 'package:aula01/res/colors.dart';
import 'package:aula01/res/images.dart';
import 'package:flutter/material.dart';

class DarkContainer extends StatelessWidget {
  final Widget child;

  const DarkContainer({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _marginTop = _width / 16.0;
    final _marginLeft = _width * 0.03;
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
            padding: EdgeInsets.only(top: _marginTop, left: _marginLeft),
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
