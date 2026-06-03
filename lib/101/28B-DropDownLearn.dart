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
    //  DropdownMenuItem ile ilgili Açıklama aşağıda 
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
//Dropdown Menu Item
//Dropdown Menu Item (Açılır Menü Öğesi), web sitelerinde veya uygulamalarda kullanıcının tıkladığında veya üzerine geldiğinde açılan menü (dropdown)
//listesi içindeki her bir seçeneğe verilen isimdir.

//Bir Dropdown Menu Item (Açılır Menü Öğesi) yazılımda temelde iki farklı değer taşır: Kullanıcının ekranda gördüğü değer (Görünen Değer / Text) ve
//arka planda yazılımın işlediği değer (Veri Değeri / Value)
// Arka Plan Değeri (Value Attribute)Kullanıcı bir seçeneğe tıkladığında, veri tabanına kaydedilen veya API'ye gönderilen asıl veridir.
//Kullanıcı bu değeri doğrudan görmez.ID / Benzersiz Numaralar: Örneğin şehir seçimi menüsünde ekranda "İstanbul" yazar ancak arka plandaki değer 34'tür.
