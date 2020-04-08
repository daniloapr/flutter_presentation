import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BulletList extends StatelessWidget {
  @required
  final List<String> _list;

  BulletList(this._list);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _getList(),
    );
  }

  List<Widget> _getList() {
    return _list
        .map((text) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                "● " + text,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500),
              ),
            ))
        .toList();
  }
}
