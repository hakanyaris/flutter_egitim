import 'package:flutter/material.dart';
import 'package:flutter_application_1/demos(my)/2-Notped/Ekranlar/GirisEkranlar%C4%B1/sifreOlustur.dart';
import 'package:flutter_application_1/demos(my)/2-Notped/S%C4%B0ingletionPreference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GirisEkrani extends StatefulWidget {
  GirisEkrani({super.key});

  @override
  State<GirisEkrani> createState() => _GirisEkraniState();
}

class _GirisEkraniState extends State<GirisEkrani> {
  late SharedPreferences preferences;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  Future init() async {
    // SharedPreferencesInstance.instance;
    // print(SharedPreferencesInstance.preferences.getString('Sifre'));
    // SharedPreferencesInstance.SharedInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(
          height: 50,
        ),
        Container(
          width: 200,
          height: 50,
          child: TextField(
              decoration: InputDecoration(
                  hintText: 'ŞİFRE',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.black, width: 10)))),
        ),
        Container(height: 15),
        ElevatedButton(
          onPressed: () {},
          child: Text('Giriş'),
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return SifreOlusturmaEkrani();
                },
              ));
            },
            child: Text('Şifre Oluştur')),
        TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return SifreOlusturmaEkrani();
                },
              ));
            },
            child: Text('şifre'

                // SharedPreferencesInstance.preferences
                //     .getString('Sifre')
                //     .toString()
                )),
        Text(
            SharedPreferencesInstance.preferences.getString('Sifre').toString())
      ]),
    );
  }
}
