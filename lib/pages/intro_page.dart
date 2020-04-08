import 'package:aula01/components/cubos_dark_container.dart';
import 'package:flutter/material.dart';

///Introduction
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CubosDarkContainer(
        child: Center(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
