import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'boxed_text.dart';

class TopicList extends StatelessWidget {
  final String title;
  final List<String> list;

  const TopicList(this.title, this.list);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.black),
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
          color: Colors.pink,
        ),
      )
    ];
    list.forEach((text) => widgetList.add(Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(
            "● " + text,
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
          ),
        )));

    return widgetList;
  }
}
