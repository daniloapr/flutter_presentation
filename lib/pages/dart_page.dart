import 'package:aula01/components/dark_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:aula01/components/topic_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DartPage extends StatelessWidget {
  const DartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
      child: DarkContainer(
          child: TopicList(title: 'Dart', list: {
        "Linguagem multiplataforma, criada pela google, lançada em 2011.": [],
        "Foi criada inicialmente para substituir o Javascript (mas não deu certo)":
            [],
        "Linguagem rápida, otimizada para criação de UI": [],
        "Baseada nas boas práticas das linguagens tradicionais e modernas.": []
      })),
    );
  }
}
