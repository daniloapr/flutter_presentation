import 'package:aula01/components/cubos_dark_container.dart';
import 'package:aula01/components/main_title.dart';
import 'package:flutter/material.dart';

///Introduction
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CubosDarkContainer(
        child: Center(
          child: MainTitle(
            text: 'Hello World!',
          ),
        ),
      ),
    );
  }
}
