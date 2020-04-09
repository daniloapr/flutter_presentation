import 'package:aula01/components/dark_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:aula01/components/topic_list.dart';
import 'package:flutter/material.dart';

class WhyFlutterPage extends StatelessWidget {
  const WhyFlutterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
      child: DarkContainer(
          child: TopicList(title: "Por que Flutter?", list: {
        "Performance nativa": [],
        "Documentação oficial completa": [],
        "UI flexível e completa": [],
        "Fácil componentização de views": [],
        "Desenvolvimento ágil (Dev Experience)": [],
        "Independe de uma IDE específica": [],
        "Um código, diversas plataformas (facilidade de manutenção)": [],
        "Possibilidade de integrações em código nativo (channels)": [],
        "Linguagem oficial do Fuschia": []
      })),
    );
  }
}
