import 'package:aula01/components/dark_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:aula01/components/topic_list.dart';
import 'package:flutter/material.dart';

class WhyNotFlutterPage extends StatelessWidget {
  const WhyNotFlutterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
      child: DarkContainer(
          child: TopicList(title: "Por que não?", list: {
        "Falta de packages de integração, libs e componentes prontos": [],
        "Utiliza o Dart, uma linguagem “nova”, pouco adotada no mercado": [],
        "Comunidade ainda pequena em relação à outras tecnologias": [
          "Dificuldade em encontrar soluções nos fóruns"
        ],
        "Existem outras tecnologias multiplataformas mais estabelecidas no mercado":
            [],
      })),
    );
  }
}
