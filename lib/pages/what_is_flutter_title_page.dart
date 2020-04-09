import 'package:aula01/components/cubos_dark_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:aula01/components/main_title.dart';
import 'package:aula01/components/text_link.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WhatIsFlutterTitlePage extends StatelessWidget {
  const WhatIsFlutterTitlePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
      child: CubosDarkContainer(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MainTitle(text: "Flutter? É de comer?"),
            TextLink(
              link: 'https://flutter.dev',
            )
          ],
        )),
      ),
    );
  }
}
