import 'package:aula01/components/dark_container.dart';
import 'package:aula01/components/global_widget.dart';
import 'package:aula01/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int countA = 0;
  int countB = 0;

  @override
  void dispose() {
    super.dispose();
  }

  void increment(bool isA) {
    setState(() {
      if (isA) {
        countA++;
        return;
      }

      countB++;
    });
  }

  void decrement(bool isA) {
    setState(() {
      if (isA) {
        countA--;
        return;
      }

      countB--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DarkContainer(
      ignorePadding: true,
      child: Center(
        child: Container(
          height: 600,
          width: 350,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Title(
                child: Text("Contador"),
                color: AppColors.black,
              ),
            ),
            body: Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: Text("Contagem:\n A = $countA, B = $countB",
                    style: TextStyle(fontSize: 20)),
              ),
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("A:"),
                    SizedBox(width: 16),
                    FloatingActionButton(
                      heroTag: "decrementBtnA",
                      onPressed: () => decrement(true),
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(width: 16),
                    FloatingActionButton(
                      heroTag: "incrementBtnA",
                      onPressed: () => increment(true),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("B:"),
                    SizedBox(width: 16),
                    FloatingActionButton(
                      heroTag: "decrementBtnB",
                      onPressed: () => decrement(false),
                      child: Icon(Icons.remove),
                    ),
                    SizedBox(width: 16),
                    FloatingActionButton(
                      heroTag: "incrementBtnB",
                      onPressed: () => increment(false),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
