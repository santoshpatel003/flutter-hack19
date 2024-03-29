import 'package:example/dialogflow_v2.dart';
import 'package:example/speech.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Chat App',
      theme: new ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: new MyHomePage(title: 'Flutter Chat app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: 
        Center(
          child: 
          new Column(children: <Widget>[
        new Container(
          margin: EdgeInsets.all(10.0),
          child: Center(child: 
            Column(
            children: <Widget>[
              new Container(
                margin: EdgeInsets.all(10.0),
                child : Image.asset(
                'asset/flutter_icon.png',
              ),
            ),
              new Text('Flutter Bot', style: TextStyle(
                color: Colors.teal,
                fontSize: 40,
                fontWeight: FontWeight.w800
              )),
              new Container(
                margin: EdgeInsets.fromLTRB(10, 100, 10, 50),
                child: Center(
                  child: new Text('Hey, you can ask me about Flutter', 
                  style: new TextStyle(
                    fontSize: 25
                  ),
                  )
                ) ,
              ),
              new RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageDialogflowV2()),
                );
              },
              child: Text("Go and Ask"),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Speech()),
                );
              },
              child: Text("Go and Speak"),
            ),
            ],
          ) 
          ) 
        )
      ]),
        )
    );
  }
}
