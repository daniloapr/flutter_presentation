import 'package:aula01/res/colors.dart';
import 'package:flutter/material.dart';

class DarkContainer extends StatelessWidget {
  final Widget child;

  const DarkContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black,
      child: child,
    );
  }
}
