import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int countA = 0;
  int countB = 0;

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
    return Scaffold(
      appBar: AppBar(
        title: Title(
          child: titleText(),
          color: Colors.blue,
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: Text("Contagem atual: A = $countA, B = $countB",
              style: TextStyle(fontSize: 40)),
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
                onPressed: () => increment(true),
                child: Icon(Icons.add),
              ),
              SizedBox(width: 16),
              FloatingActionButton(
                onPressed: () => decrement(true),
                child: Icon(Icons.remove),
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
                onPressed: () => increment(false),
                child: Icon(Icons.add),
              ),
              SizedBox(width: 16),
              FloatingActionButton(
                onPressed: () => decrement(false),
                child: Icon(Icons.remove),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget titleText() {
    print("Criando titulo");
    return Text("Contador");
  }
}
