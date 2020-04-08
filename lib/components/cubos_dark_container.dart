import 'package:aula01/res/colors.dart';
import 'package:flutter/material.dart';

class CubosDarkContainer extends StatelessWidget {
  final Widget child;

  const CubosDarkContainer({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = context.size.height;
    final width = context.size.width;
    //triangle size
    final size = (height <= width) ? height / 2 : width / 2;

    return Container(
      color: AppColors.black,
      child: CustomPaint(
        size: Size(size, size),
        painter: _MyPainter(),
      ),
    );
  }
}

class _MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(0, size.height)
      ..lineTo(0, 0);

    final paint = Paint()
      ..color = Colors.lightBlue
      ..isAntiAlias = true;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
