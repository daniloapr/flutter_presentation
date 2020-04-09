import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BulletList extends StatelessWidget {
  @required
  final Map<String, List<String>> _list;

  BulletList(this._list);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _getList(),
    );
  }

  List<Widget> _getList() {
    List<Widget> widgets = [];
    _list.entries.forEach((entry) {
      widgets.add(Padding(
        padding: const EdgeInsets.only(top: 12),
        child: Text(
          "● " + entry.key,
          style: TextStyle(
              color: Colors.white, fontSize: 38, fontWeight: FontWeight.w500),
        ),
      ));
      entry.value.forEach((element) {
        widgets.add(Padding(
          padding: const EdgeInsets.only(left: 40, top: 8),
          child: Text(
            "○ " + element,
            style: TextStyle(
                color: Colors.white, fontSize: 36, fontWeight: FontWeight.w500),
          ),
        ));
      });
    });

    return widgets;
  }
}
