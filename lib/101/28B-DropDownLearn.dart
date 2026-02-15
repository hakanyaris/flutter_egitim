import 'package:flutter/material.dart';

class DropDownLearn extends StatefulWidget {
  @override
  State<DropDownLearn> createState() => _DropDownLearnState();
}

class _DropDownLearnState extends State<DropDownLearn> {
  String kulSecimi = '';
  List<String> _sehirler = ["istanbul", "ankara", "ığdır", "konya", "manisa"];
  String _secilenSehir = "istanbul";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Meyveler'),
        ),
        body: Column(
          children: [
            ikinciDers(),
            Text(kulSecimi),
          ],
        ));
  }

  DropdownButton biriciDers() => DropdownButton(items: [
        DropdownMenuItem(
          child: Text('Elma'),
          value: 'Elma',
        ),
        DropdownMenuItem(
          child: Text('Armut'),
          value: 'Armut',
        ),
        DropdownMenuItem(
          child: Text('Muz'),
          value: 'Üzüm',
        )
      ], onChanged: (value) => {kulSecimi = value});

  DropdownButton ikinciDers() {
    return DropdownButton<String>(
        value: _secilenSehir,
        items: _sehirler.map((String sehir) {
          return DropdownMenuItem<String>(value: sehir, child: Text(sehir));
        }).toList(),
        onChanged: _sehirDegistir);
  }

  void _sehirDegistir(String? yeniSehir) {
    setState(() {
      if (yeniSehir != null) _secilenSehir = yeniSehir;
    });
  }
}
