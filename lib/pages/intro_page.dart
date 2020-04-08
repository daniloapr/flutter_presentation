import 'package:aula01/components/dark_container.dart';
import 'package:aula01/components/text_link.dart';
import 'package:flutter/material.dart';

///Introduction
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DarkContainer(
      child: Center(
        child: Column(
          children: <Widget>[
            TextLink(
              text: 'Material Design',
              link: 'https://flutter.dev/docs/development/ui/widgets/material',
            ),
            SizedBox(height: 20),
            TextLink(
              text: 'Material Design',
              link: 'https://flutter.dev/docs/development/ui/widgets/cupertino',
            ),
          ],
        ),
      ),
    );
  }
}
