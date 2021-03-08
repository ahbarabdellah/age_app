import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//var list_of_q= [];
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State {
  final myController = TextEditingController();
  var s = 'How old are you ? ';
  int age;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Colors.white70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  child: TextField(
                    controller: myController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "        Enter Your birth year        ...  ",
                        hintStyle: TextStyle(
                          color: Colors.red,
                          fontStyle: FontStyle.normal,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.green,
                            ))),
                  )),
              Text(s),
              RaisedButton(
                  onPressed: () {
                    setState(() {
                      int year = int.parse(myController.text);
                      age = DateTime.now().year-year ;
                      s = 'you are $age years old ...';
                    });
                  },
                  color: Colors.green,
                  child: Text('Get your age'))
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(
            'calculate your age ',
          ),
        ),
      ),
    );
  }
}