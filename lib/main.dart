import 'package:example/dialogflow_v2.dart';
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
              new Text('Globant Help Chat', style: TextStyle(
                color: Colors.teal,
                fontSize: 20,
                fontWeight: FontWeight.w800
              )),
              new Container(
                margin: EdgeInsets.fromLTRB(10, 100, 10, 100),
                child: new Text('Info Text'),
              ),
              new RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageDialogflowV2()),
                );
              },
              child: Text("Start Chating"),
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
