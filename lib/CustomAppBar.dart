import 'package:flutter/material.dart';

class CustomAppBar {
  CustomAppBar._();

  static AppBar defaultAppBar({BuildContext context, String title, String subtitle, bool profile}) {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width -
                150,
            child: Text(title,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold)),
          ),
          Container(
            width: MediaQuery.of(context).size.width -
                150,
            child: Text(
              subtitle,
              style: TextStyle(
                  fontSize: 18),
              softWrap: true,
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),

      actions: [
        profile
            ? GestureDetector(
          onTap: () {
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.person),
          ),
        )
            : SizedBox(
          height: 50,
          width: 50,
          child: Container(
            color: Colors.white,
          ),
        )
      ],
    );
  }

  static AppBar searchAppBar(
      BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5.0)),
        child: Wrap(children: [
          Container(
            width: MediaQuery.of(context).size.width - 100,
            height: 30.0,
            child: TextField(
                autofocus: true,
                maxLines: 1,
                minLines: 1,
                maxLength: 255,
                style: TextStyle(color: Colors.black, fontSize: 15.0),
                decoration: InputDecoration(
                    hintText: 'Cari',
                    counterText: "",
                    border: InputBorder.none)),
          ),
        ]),
      ),
      titleSpacing: 0.0,
    );
  }
}