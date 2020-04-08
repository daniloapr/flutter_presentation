import 'package:aula01/components/dark_container.dart';
import 'package:aula01/components/text_link.dart';
import 'package:aula01/components/topic_list.dart';
import 'package:flutter/material.dart';

///Introduction
class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DarkContainer(
      child: Center(
        child: TopicList(
          title: 'Conteúdo',
          list: ['Tópico 1', 'Tópico 2'],
        ),
      ),
    );
  }
}
