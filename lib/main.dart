import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/GeneralPage.dart';
import 'package:flutter_app/Page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  List<String> items = ['Test 1', 'Test 2', 'Test 2', 'Test 2'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: GeneralPage(search: true,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      crossAxisCount: 3),
            shrinkWrap: true,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return OpenContainer(
                transitionType: ContainerTransitionType.fade,
                transitionDuration: Duration(seconds: 5),
                openBuilder: (BuildContext context, VoidCallback _) {
                return Page2();
              },
                closedBuilder: (BuildContext context, VoidCallback _) {
                  return Container(
                    color: Colors.blue,
                      child: Text(items[index], style: TextStyle(color: Colors.white),));
                },
                onClosed: (value) {
                  print('Hasil return $value');
                },
              );
            },
          )
        ],
      ),),
    );
  }



}
