// import 'dart:io';
// import 'package:dio/dio.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_foxitpdf/flutter_foxitpdf.dart';
import 'package:notability/screens/pdfView.dart';
import 'package:path_provider/path_provider.dart';

// import 'package:path_provider/path_provider.dart';
// import 'package:flutter_file_manager/flutter_file_manager.dart';

// import 'package:path/path.dart' as p;

// class MyPhone extends StatefulWidget {
//   MyPhone({Key key}) : super(key: key);

//   @override
//   _MyPhoneState createState() => _MyPhoneState();
// }

// class _MyPhoneState extends State<MyPhone> {
//   var files;
//   final linkDownload = TextEditingController();
//   final fileName = TextEditingController();
//   final imgUrl =
//       "https://www.w3.org/WAI/ER/tests/xhtml/testfiles/resources/pdf/dummy.pdf";
//   final Dio dio = Dio();
//   void initState() {
//     print('widget create ');
//     // getStorageData();

//     _listFile();
//     super.initState();
//   }

//   pathStore() async {
//     Directory directory;
//     directory = await getExternalStorageDirectory();
//     // String newPath = "";
//     // List<String> paths = directory.path.split("/");
//     // for (int x = 1; x < paths.length; x++) {
//     //   String folder = paths[x];
//     //   if (folder != "Android") {
//     //     newPath += "/" + folder;
//     //   } else {
//     //     break;
//     //   }
//     // }
//     // newPath = newPath + "/RPSApp";
//     // String newPath = "/storage/emulated/0/FoxitStore"
//     directory = Directory(directory.path);
//     return directory;
//   }

//   _listFile() async {
//     // var files = await pathStore();
//     // print('AA ${files.list().toList()}');
//     var root = await getExternalStorageDirectory();
//     var fm = FileManager(root: root);
//     files = await fm.filesTree(
//         //set fm.dirsTree() for directory/folder tree list
//         excludedPaths: [
//           "/storage/emulated/0/Android"
//         ], extensions: [
//       "png",
//       "pdf"
//     ] //optional, to filter files, remove to list all,
//         //remove this if your are grabbing folder list
//         );
//     setState(() {});
//   }

//   saveFile(String urlDownload, String filename) async {
//     try {
//       if (Platform.isAndroid) {
//         Directory directory = await pathStore();
//         // print("SAVE ${directory.path}");
//         // if (!await directory.exists()) {
//         //   print("CREATE FOLDER");
//         //   await directory.create();
//         // }
//         if (await directory.exists()) {
//           print("DOWNLOAD");
//           var extensionFileDownload = p.extension(urlDownload);
//           File save =
//               File(directory.path + '/' + filename + extensionFileDownload);
//           await dio.download(
//             urlDownload,
//             save.path,
//           );
//         }
//       }
//     } catch (err) {
//       print("Error $err");
//     }
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('My Phone'),
//         ),
//         body: SingleChildScrollView(
//           child: Column(children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextFormField(
//                 controller: linkDownload,
//                 decoration: const InputDecoration(
//                   hintText: 'Enter link to download',
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: TextFormField(
//                 // controller: linkDownload,
//                 controller: fileName,
//                 decoration: const InputDecoration(
//                   hintText: 'File Name',
//                 ),
//               ),
//             ),
//             OutlineButton(
//                 onPressed: () async {
//                   if (linkDownload.text.isEmpty) {
//                     print("EMPTY");
//                   }
//                   if (fileName.text.isEmpty) {
//                     print("EMPTY");
//                   } else {
//                     print("LINK ${linkDownload.text}");
//                     await saveFile(imgUrl, fileName.text);
//                     // await saveFile(linkDownload.text, fileName.text);
//                     _listFile();
//                     print("FILES ${files}");
//                     // saveFile(linkDownload.text, );
//                   }
//                   // saveFile();
//                 },
//                 child: Text("Download")),
//             files == null
//                 ? Text("Searching File")
//                 : ListView.builder(
//                     shrinkWrap: true,
//                     itemBuilder: (context, index) {
//                       return Card(
//                           child: ListTile(
//                         title: Text(files[index].path.split('/').last),
//                         leading: Icon(Icons.image),
//                         onTap: () {
//                           print("This is tap ${files[index].path}");
//                           // var extensionFileDownload = p.extension(urlDownload);
//                           var extension = p.extension(files[index].path);
//                           if (extension == ".pdf") {
//                             print("this is pdf file");
//                           }
//                         },
//                       ));
//                     },
//                     itemCount: files?.length ?? 0,
//                   )
//           ]),
//         ));
//   }
// }

class MyPhone extends StatefulWidget {
  MyPhone({Key key}) : super(key: key);

  @override
  _MyPhoneState createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  String _sn = 'CcrYWIpqpNEUiZNkv35+vjPJyJqMi6JNJaCWEPSF95Oax0Qq4xaKTw==';
  String _key =
      'ezJvjt8nvBJ39NsSaCIJwQ0XTAq2won0H8tAB4sKrjG2ABhytphvs5BO4Y8D8looCnGW88MpowL1gyJMRfcVNqaatg8bzYMJhg6l7YgTEX2eYlzM3dkHGfoIyGzlKiAPGPEN2Pbe+ORIHCoeufiQ/J/GBrJ3jSafegiYo0GlwPckbZn33fMD8k54g9/LzdUWVE6gnBcGuKgKlMuDnWAoWJRYREz3dJDa2q4whALEx+o72/SM2OoOjlTjzKiVH1vk+fEOBcpGqX0JNyf3QsjXuoDG9ko1kFmZVmqJjcV37J8/TqbYd4N9OZiEOq0PciLK2Ks0Dt18kc/wutpXj/3LzZLL7KhAIUUmMt/EideES9i4AivwY6i6vKu/autsA3GLLaSnT0ShJ5k2TkB6hb4Hg8TiKD3XPI0j25kV+NRJvpMwXyAWHO6SVOpmERjvazhVNhIWmTRx8xNLaZZkcgHpxwGzxNsL1zIt0jdWRWpPUOHzWB+5gyOmUuPDfnR2JOmjitrw/R8FSrpMANASFNwsiR03qOfSY2HkCeL7G0NoFLnk5b7YMDJRqcqyAW82lEsRpEGVyd79ulyNh9m2HgaD+0hze0T15lEkEbiuiOkvmg4hLpih8yktT5HKesV/gLaewrddWxyep87yvFa/vOqF/XFrknM9iuohl/D7AwNDpJSZh26a5m/qgwD4HBdpcCjCPLz+pLdi84/CRS5l/3w/o0AwSi0TDOB88/vFDtq8LabOokpGjcRzK+Fzee2UkEeyhuSmaq3xvOKnytmJnCibCg+FlpQpnX+XQ52W/q38vSbh+xxKjbhDAcK2GLvcoRCCbWir94q/lB41wIucfhReWGQDpYn9fK2q9J9pZPxFOvM0BAWUoXgcgnVu0B/yW2uGauCL9fzdfh3kvRllhiDRUvL7Zg1U/tWx8nGx4bR0fviNc/aU7h/alBWS76cqsTK3XqRP4JwzWOzKBTqPS+6lMlmAyY67KG1Ipkq17kKmxRs/VMbyVCXbW13TM+Pmxfli189OzLLk6j58tOptSpFQ5zJ/0bCUr/kbPO9QfasPvYNHZGlRRwuY0Cr2IkH74eDrMv600EYNX4euqEQogZw4ieMg5Oqi74+YPOGxBWtbvTkxnRSpRQvS9C/9VnWBZikScRaJfqR1K1wfD2NygJvYUbufmN/KLptiHMcb0rWr0pOrrOzqWCx50bCJPVls+T0yl0hhSnALSLHCpMRmcU4NfEKQDEqJLLpIoxhfv9wc598=';
  String platFormVersion = "";
  String _path = "";
  void initState() {
    super.initState();
    // initPlatformState();
    // init(_sn, _key);
    copyAsset().then((value) {
      _path = value;
      initPlatformState();
      init(_sn, _key);
      print("PATHHHH $_path");
      openDoc(_path, null);
      setState(() {});
    });
  }

  // Future<void> getPDFViewCtrl() async {
  //   return await FlutterFoxitpdf.getPdfViewCtrl();
  // }
  Future<void> init(String sn, String key) async {
    await FlutterFoxitpdf.initialize(sn, key);
  }

//THIS IS FUNCTION TO COPY ASSETS PDF TO TEMP FILE SYSTEM !!!
  Future<String> copyAsset() async {
    Directory tempDir = await getTemporaryDirectory();
    print("TEMPDIR $tempDir");
    String tempPath = tempDir.path;
    File tempFile = File('$tempPath/copy.pdf');
    ByteData bd = await rootBundle.load('assets/sample.pdf');
    await tempFile.writeAsBytes(bd.buffer.asUint8List(), flush: true);
    print("TEMP PATH ${tempFile.path}");
    return tempFile.path;
  }

  Future<void> initPlatformState() async {
    var _platform = await FlutterFoxitpdf.platformVersion;
    // var pdfviewCtrl = await getPDFViewCtrl();

    setState(() {
      platFormVersion = _platform;
      print("Platform version $platFormVersion");
    });
  }

  Future<void> openDoc(String path, String password) async {
    await FlutterFoxitpdf.openDocument(path, password);
  }

  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("My Phone")));
  }
}
