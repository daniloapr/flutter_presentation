import 'package:aula01/components/dark_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:aula01/components/topic_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
      child: Center(
        child: DarkContainer(
          child: TopicList(title: "Conteúdo", list: {
            "O que é o Flutter?": [],
            "Widgets": [],
            "Dart": [],
            "Porque o Flutter?": [],
            "Porque não?": [],
            "Construindo o primeiro app": [],
            "Desafio": []
          }),
        ),
      ),
    );
  }
}
