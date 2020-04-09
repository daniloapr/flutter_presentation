import 'package:aula01/components/bullet_list.dart';
import 'package:aula01/components/dark_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WhatIsFlutterPage extends StatelessWidget {
  const WhatIsFlutterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
        child: DarkContainer(
      child: BulletList({
        'Kit de ferramentas para UI, que compila aplicações de forma nativa para mobile, web e desktop, a partir de um único código base.':
            ["Compila código de maquina"],
        "Desenvolvido e suportado pela Google": [],
        "Feito sobre a Skia Graphics Engine, uma engine de jogos": [
          "O flutter é um canvas em branco",
          "Abrange toda a camada de view"
        ],
      }),
    ));
  }
}
