import 'package:aula01/components/bullet_list.dart';
import 'package:aula01/components/dark_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DartPage extends StatelessWidget {
  const DartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DarkContainer(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0),
          child: BulletList({
            "Linguagem multiplataforma, criada pela google. lançada em 2011.":
                [],
            "Foi criada inicialmente para substituir o Javascript (mas não deu certo)":
                [],
            "Linguagem rápida, focada no cliente.": [],
            "Otimizada para criação de UI": [],
            "Baseada nas boas práticas das linguagens tradicionais e modernas.":
                []
          }),
        ),
      )),
    );
  }
}
