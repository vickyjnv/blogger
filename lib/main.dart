import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

 void main() {
  runApp(new Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My new app",
      home: new Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}


class _HomepageState extends State<Homepage> {
String mytext="hello world";
_changeText(){
  setState(() {
    if(mytext.startsWith("h")){
      mytext="welcome to my app";
    }else{
      mytext="hello world";
    }
  });
}
  Widget _bodyWidget(){
    return new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text(mytext),
              new RaisedButton(
                  child:new Text("click"),
                  onPressed: _changeText,
              )
            ],
          ),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("homepage"),
      ),
      body: _bodyWidget()
    );
  }
}
