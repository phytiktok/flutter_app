import 'package:flutter/material.dart';
import '../models/mainFolder.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  Widget build(BuildContext context) {
    //BUILD CONTENT
    return Scaffold(appBar: buildAppbar(), body: buildBody());
  }

  Container buildBody() {
    return Container(
        child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemCount: listMainFolder.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.all(5.0),
                child: Container(
                  height: 50,
                  // color: Colors.amber[colorCodes[index]],
                  color: Colors.brown,
                  child: MainFolderItem(index),
                ),
              );
            }));
  }

  // ignore: non_constant_identifier_names
  ListTile MainFolderItem(int index) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => listMainFolder[index].screen));
      },
      leading: GestureDetector(
        behavior: HitTestBehavior.translucent,
        child: Container(
          width: 40,
          height: 50,
          padding: EdgeInsets.symmetric(vertical: 4.0),
          alignment: Alignment.center,
          child: CircleAvatar(child: listMainFolder[index].icon),
        ),
      ),
      title: Text(
        listMainFolder[index].title.toString(),
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
      dense: false,
    );
  }

  AppBar buildAppbar() => AppBar(title: Text('Notability'));
}
