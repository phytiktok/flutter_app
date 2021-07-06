import 'package:flutter/material.dart';

import '../screens/myphone.dart';

class MainFolderWidget {
  final String title;
  final Icon icon;
  final Widget screen;
  MainFolderWidget({this.title, this.icon, this.screen});
}

List<MainFolderWidget> listMainFolder = [
  MainFolderWidget(
      // icon: Icons.favorite,
      icon: Icon(
        Icons.favorite,
        size: 24.0,
        semanticLabel: 'Text to announce in accessibility modes',
      ),
      title: 'My Phone',
      screen: MyPhone()
      // screen: Container(child: Text("PHONE"))
      ),
  // MainFolderWidget(
  //     // icon: Icons.favorite,
  //     icon: Icon(
  //       Icons.favorite,
  //       size: 24.0,
  //       semanticLabel: 'Text to announce in accessibility modes',
  //     ),
  //     title: 'My Phone',
  //     screen: Container(child: Text("DIFFERENCE"))),
];
