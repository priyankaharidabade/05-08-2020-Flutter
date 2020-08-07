import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

web() async {
  var url = "http://192.168.43.19/cgi-bin/${cmd}.py";
  var r = await http.get(url);
  var data = r.body;
  print(data);
}

String cmd;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('SignUp Form'),
          backgroundColor: Colors.grey,
        ),
        body: Center(
          child: Container(
            height: 400,
            width: 300,
            color: Colors.amberAccent,
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Card(
                  child: TextField(
                    autofocus: true,
                    cursorColor: Colors.blue,
                    style: TextStyle(
                      height: 1,
                    ),
                    onChanged: (value) => {cmd = value},
                    decoration: InputDecoration(
                      hintText: "Enter name",
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Card(
                  child: TextField(
                    autofocus: true,
                    cursorColor: Colors.blue,
                    style: TextStyle(
                      height: 1,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter EmailId",
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Card(
                  child: TextField(
                    autofocus: true,
                    cursorColor: Colors.blue,
                    style: TextStyle(
                      height: 1,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter Phone No",
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Card(
                  child: TextField(
                    autofocus: true,
                    cursorColor: Colors.blue,
                    style: TextStyle(
                      height: 1,
                    ),
                    decoration: InputDecoration(
                      hintText: "Enter College name",
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Card(
                  child: FlatButton(
                    onPressed: () {
                      web();
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/
