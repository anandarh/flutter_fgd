import 'package:flutter/material.dart';
import 'package:flutter_app/CustomAppBar.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onBackButtonPressed;
  final Color backColor;
  final Widget child;
  final bool profile;
  final bool search;

  GeneralPage(
      {this.title = "Title",
        this.subtitle = "Subtitle",
        this.onBackButtonPressed,
        this.child,
        this.backColor,
        this.profile = false,
        this.search = false,
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            search ? CustomAppBar.searchAppBar(context) : CustomAppBar.defaultAppBar(context: context, title: title, subtitle: subtitle, profile: profile),
            child ??
                SizedBox(
                  height: 50,
                  width: 50,
                  child: Container(
                    color: Colors.red,
                  ),
                )
          ],
        ),
      ),
    );
  }
}