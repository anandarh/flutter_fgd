import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('test'),),
      body: RaisedButton(
        onPressed: () {
          Navigator.of(context).pop(true);
        },
        child: Text('Button Success'),
      ),
      floatingActionButton: OpenContainer(
        transitionType: ContainerTransitionType.fade,
        transitionDuration: Duration(seconds: 2),
        openBuilder: (BuildContext context, VoidCallback _) {
          return Page2();
        },
        closedBuilder: (BuildContext context, VoidCallback _) {
          return Container(
              color: Colors.green,
              width: 50,
              height: 50,
              child: Icon(Icons.add));
        },
        onClosed: (value) {

        },
      ),
    );
  }
}
