import 'package:aula01/components/cubos_dark_container.dart';
import 'package:aula01/components/main_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WhatIsFlutterTitlePage extends StatelessWidget {
  const WhatIsFlutterTitlePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CubosDarkContainer(
        child: Center(child: MainTitle(text: "O que é Flutter?")),
      ),
    );
  }
}