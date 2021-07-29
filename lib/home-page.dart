import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, result = 0;

  final TextEditingController t1 = new TextEditingController(text: "");
  final TextEditingController t2 = new TextEditingController(text: "");
  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 + num2;
    });
  }

  void doSubtraction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 - num2;
    });
  }

  void doMultiplaction() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 * num2;
    });
  }

  void doDivide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 ~/ num2;
    });
  }

  void clear() {
    t1.text = "";
    t2.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Calculator",
          textAlign: TextAlign.center,
        ),
      ),
      body: new Container(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Output : $result",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red.shade800,
                  fontWeight: FontWeight.bold,
                ),
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter Number 1"),
                controller: t1,
              ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(hintText: "Enter Number 2"),
                controller: t2,
              ),
              SizedBox(
                height: 15.0,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new MaterialButton(
                    child: new Text("+"),
                    onPressed: doAddition,
                    color: Colors.red.shade200,
                  ),
                  new MaterialButton(
                    child: new Text("-"),
                    onPressed: doSubtraction,
                    color: Colors.red.shade200,
                  ),
                ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new MaterialButton(
                    child: new Text("*"),
                    onPressed: doMultiplaction,
                    color: Colors.red.shade200,
                  ),
                  new MaterialButton(
                    child: new Text("/"),
                    onPressed: doDivide,
                    color: Colors.red.shade200,
                  ),
                ],
              ),
              new MaterialButton(
                child: new Text("Clear"),
                onPressed: clear,
                color: Colors.red.shade900,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
