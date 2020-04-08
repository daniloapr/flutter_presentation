import 'package:aula01/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'boxed_text.dart';
import 'bullet_list.dart';

class TopicList extends StatelessWidget {
  final String title;
  final Map<String, List<String>> list;

  const TopicList({@required this.title, @required this.list});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: getColumnChildren(),
          ),
        )
      ],
    );
  }

  List<Widget> getColumnChildren() {
    final List<Widget> widgetList = [
      Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: BoxedText(
          text: title,
          color: AppColors.pink,
        ),
      )
    ];
    widgetList.add(BulletList(list));
    return widgetList;
  }
}
