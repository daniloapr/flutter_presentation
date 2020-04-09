import 'package:aula01/components/cubos_dark_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:aula01/components/main_title.dart';
import 'package:flutter/material.dart';

class WhyFlutterConclusionPage extends StatelessWidget {
  const WhyFlutterConclusionPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
      child: CubosDarkContainer(
          child: Center(
        child: MainTitle(text: "CONCLUSÃO FINAL: produtividade"),
      )),
    );
  }
}
