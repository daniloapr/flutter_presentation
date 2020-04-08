import 'package:aula01/components/cubos_dark_container.dart';
import 'package:aula01/components/dark_container.dart';
import 'package:aula01/components/topic_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DarkContainer(
          child: Padding(
            padding: const EdgeInsets.only(left: 80.0, top: 40.0),
            child: TopicList(title: "Conteúdo", list: [
              "O que é o Flutter?",
              "Widgets",
              "Dart",
              "Porque o Flutter?",
              "Porque não?",
              "Constuindo o primeiro app",
              "Desafio"
            ]),
          ),
        ),
      ),
    );
  }
}
