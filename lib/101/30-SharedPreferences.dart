import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// CİHAZ ÜZERİNE VERİLERİMİZE VERİLERİMİZ KAYETMEMİZİ SAĞLAR map gibi  çalışır anahtar değer

//Kaydet butonuna tıklanınca string verisini sharedPreferences ile  telefona kaydeder
//Göster butonuna tıklanınca kaydedilen strning verisi çağrılır ve ekranda gösterilir.

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends State<SharedLearn> {
  late SharedPreferences _preferences;
  final _controller = TextEditingController();
  String text = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  Future init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  void _saveText(String text) async {
    _preferences.remove('isim');
    _preferences.setString('isim', text);
  }

  void _showText(text) {
    setState(() {
      this.text = _preferences.getString(text).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextField(
            controller: _controller,
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          SizedBox(
            height: 20,
          ),
          Text(text),
          ElevatedButton(
              onPressed: () async {
                String text = _controller.text;
                _saveText(text);
              },
              child: Text('Kaydet')),
          ElevatedButton(
              onPressed: () async {
                _showText('isim');
              },
              child: Text('Göster'))
        ]),
      )),
    );
  }
}
