import 'package:aula01/components/cubos_dark_container.dart';
import 'package:aula01/components/dark_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:aula01/components/topic_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChalengePage extends StatelessWidget {
  const ChalengePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalWidget(
      child: DarkContainer(
          child: TopicList(
        title: 'Desafio',
        list: {
          'Criar o app desenvolvido durante a aula': [],
          'Alterar a cor do texto para cada contador:': [
            'Igual a zero: Cor Preta',
            'Números positivos: Cor verde escuro',
            'Números negativos: Cor vermelha',
          ],
          'Exibir a soma dos contadores': [
            "Soma: contadorA + contadorB",
          ],
        },
      )),
    );
  }
}
