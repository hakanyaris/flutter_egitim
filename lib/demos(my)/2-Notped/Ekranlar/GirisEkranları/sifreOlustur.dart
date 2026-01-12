import 'package:flutter/material.dart';
import 'package:flutter_application_1/demos(my)/2-Notped/S%C4%B0ingletionPreference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SifreOlusturmaEkrani extends StatefulWidget {
  SifreOlusturmaEkrani({
    super.key,
  });

  @override
  State<SifreOlusturmaEkrani> createState() => _SifreOlusturmaEkraniState();
}

class _SifreOlusturmaEkraniState extends State<SifreOlusturmaEkrani> {
  // late SharedPreferences preferences;

  final _controller = TextEditingController();
  final _controller2 = TextEditingController();
  @override
  void initState() {
    super.initState();
    init();
  }

  Future init() async {
    SharedPreferencesInstance.SharedInstance();
    // SharedPreferencesInstance.instance;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(
                hintText: 'Şifre ',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black, width: 10))),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: _controller2,
            decoration: InputDecoration(
                hintText: 'E-posta',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black, width: 10))),
          ),
          ElevatedButton(
              onPressed: (() {
                SharedPreferencesInstance.preferences
                    .setString('e-posta', _controller2.text);
                SharedPreferencesInstance.preferences
                    .setString('Sifre', _controller.text);
                print(SharedPreferencesInstance.preferences.getString('Sifre'));
                showAlertDilog(context);
              }),
              child: Text('Kaydet'))
        ]),
      ),
    );
  }
}

showAlertDilog(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Text('Şifreniz Oluşturuldu'),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Tamam'))
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
