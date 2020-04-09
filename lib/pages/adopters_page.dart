import 'package:aula01/components/dark_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:aula01/components/topic_list.dart';
import 'package:flutter/material.dart';

class AdoptersPage extends StatelessWidget {
  const AdoptersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
      child: DarkContainer(
          child: TopicList(title: "Quem já adotou?", list: {
        "Nubank": [],
        "Alibaba": [],
        "Tencent": [],
        "Kraken Rally": [],
        "Cubos Tecnologia": [],
      })),
    );
  }
}
