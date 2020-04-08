import 'package:aula01/components/cubos_dark_container.dart';
import 'package:aula01/components/main_title.dart';
import 'package:aula01/components/text_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DartTitlePage extends StatelessWidget {
  const DartTitlePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CubosDarkContainer(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            MainTitle(text: "Dart"),
            TextLink(
              link: "https://dart.dev/",
            )
          ])),
    );
  }
}
