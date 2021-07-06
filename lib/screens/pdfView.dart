import 'package:flutter/material.dart';
import 'package:flutter_foxitpdf/flutter_foxitpdf.dart';

class PdfViewer extends StatefulWidget {
  PdfViewer({Key key}) : super(key: key);

  @override
  _PdfViewerState createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  @override
  String _sn = 'CcrYWIpqpNEUiZNkv35+vjPJyJqMi6JNJaCWEPSF95Oax0Qq4xaKTw==';
  String _key =
      'ezJvjt8nvBJ39NsSaCIJwQ0XTAq2won0H8tAB4sKrjG2ABhytphvs5BO4Y8D8looCnGW88MpowL1gyJMRfcVNqaatg8bzYMJhg6l7YgTEX2eYlzM3dkHGfoIyGzlKiAPGPEN2Pbe+ORIHCoeufiQ/J/GBrJ3jSafegiYo0GlwPckbZn33fMD8k54g9/LzdUWVE6gnBcGuKgKlMuDnWAoWJRYREz3dJDa2q4whALEx+o72/SM2OoOjlTjzKiVH1vk+fEOBcpGqX0JNyf3QsjXuoDG9ko1kFmZVmqJjcV37J8/TqbYd4N9OZiEOq0PciLK2Ks0Dt18kc/wutpXj/3LzZLL7KhAIUUmMt/EideES9i4AivwY6i6vKu/autsA3GLLaSnT0ShJ5k2TkB6hb4Hg8TiKD3XPI0j25kV+NRJvpMwXyAWHO6SVOpmERjvazhVNhIWmTRx8xNLaZZkcgHpxwGzxNsL1zIt0jdWRWpPUOHzWB+5gyOmUuPDfnR2JOmjitrw/R8FSrpMANASFNwsiR03qOfSY2HkCeL7G0NoFLnk5b7YMDJRqcqyAW82lEsRpEGVyd79ulyNh9m2HgaD+0hze0T15lEkEbiuiOkvmg4hLpih8yktT5HKesV/gLaewrddWxyep87yvFa/vOqF/XFrknM9iuohl/D7AwNDpJSZh26a5m/qgwD4HBdpcCjCPLz+pLdi84/CRS5l/3w/o0AwSi0TDOB88/vFDtq8LabOokpGjcRzK+Fzee2UkEeyhuSmaq3xvOKnytmJnCibCg+FlpQpnX+XQ52W/q38vSbh+xxKjbhDAcK2GLvcoRCCbWir94q/lB41wIucfhReWGQDpYn9fK2q9J9pZPxFOvM0BAWUoXgcgnVu0B/yW2uGauCL9fzdfh3kvRllhiDRUvL7Zg1U/tWx8nGx4bR0fviNc/aU7h/alBWS76cqsTK3XqRP4JwzWOzKBTqPS+6lMlmAyY67KG1Ipkq17kKmxRs/VMbyVCXbW13TM+Pmxfli189OzLLk6j58tOptSpFQ5zJ/0bCUr/kbPO9QfasPvYNHZGlRRwuY0Cr2IkH74eDrMv600EYNX4euqEQogZw4ieMg5Oqi74+YPOGxBWtbvTkxnRSpRQvS9C/9VnWBZikScRaJfqR1K1wfD2NygJvYUbufmN/KLptiHMcb0rWr0pOrrOzqWCx50bCJPVls+T0yl0hhSnALSLHCpMRmcU4NfEKQDEqJLLpIoxhfv9wc598=';
  String _path = '';

  // Future<void> init(String sn, String key) async {
  //   await FlutterFoxitpdf.initialize(sn, key);
  // }

  void initState() {
    super.initState();
    // init(_sn, _key);
    // var test = FlutterFoxitpdf.getPdfViewCtrl();
    // print("TEST $test");
  }

  Widget build(BuildContext context) {
    return Container(
      child: Text("PDFVIEW"),
    );
  }
}
