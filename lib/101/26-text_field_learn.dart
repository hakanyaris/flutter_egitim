import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Product/Language/language_Item.dart';

class TextFieldLearn extends StatefulWidget {
  TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();
  TextEditingController controller1 =
      TextEditingController(); // bir textfield için  girilen değeri text değerini
  //alma(değeri istediğimiz başka yerde kullanabiliriz. ) kullanama,text değerini  silme gibi işlemleri yapılabilir.
  String deger = '';
  String deger2 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            // TextFieldleri düzenlemek için   maine    inputDecorationTheme: yazarak  özelliklerini düzenleyebiliriz.
            style: const TextStyle(color: Colors.black),
            maxLength: 20, //en fazla yazılabilecek karakter sayısı
            // ignore: prefer_const_constructors
            decoration: _InpuDecoration()
                ._emailInput, //aşağıda klasın içinde tanımladık
            //---------------------------------------------------
            focusNode:
                focusNodeTextFieldOne, //yukarıda tanımladık.bu focusNode ile klavyede next butonu  tklayınca
            // ağaşıdaki textfielde geçer ama aşağıdaki textfilede  focusNode eklemeliyiz
            textInputAction: TextInputAction
                .next, // focusNode için klavyede next butoun aktif olması için burayı eklemeliyiz.
            //--------------------------------------------------
            keyboardType: TextInputType
                .emailAddress, //text girişi için klavye tipi seçeriz.burada kavye email yazmak için uygun hale gelir .
            //----------------------------------------
            autofillHints: [
              AutofillHints.email
            ], //kullanıcının girdiği değeri otomatik tamamlama mesela emaili tamamla ismi tamamla v.s

            //-------------------------------------
            inputFormatters: [
              _TextProjectInputFormater()._formmatter
            ], //class aşağıda

//------------------------------------------------------
//  kelime uzunluğu(currentLength), isFocus, ve maximum uzunluk değerlerini anlık olarak alır ve biz  bu sayılarla
//ilgili istediğimiz işlemi yapabiliriz.9
            buildCounter: (BuildContext contex,
                {required int? currentLength,
                required bool? isFocused,
                required int? maxLength}) {
              return Container(
                  height: 20,
                  width: 10.0 * (currentLength ?? 0),
                  color: Colors.green);
            },
          ),
          TextField(
            focusNode: focusNodeTextFieldTwo,
            minLines: 2,
            maxLines: 10,
          ),
          TextField(
            controller: controller1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    controller1.clear();
                  },
                  child: Text('TEMİZLE'))
            ],
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  deger = controller1.text;
                });
              },
              child: Text('GÖSTER')),
          Text(deger),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  if (controller1.text.isNotEmpty) {
                    deger2 = 'Texfeld dolu';
                  } else
                    (deger2 = 'Texfield boş');
                });
              },
              child: Text('Texfield boş mu?')),
          Text(deger2),
        ],
      ),
    );
  }
}

//------------------------------------------------------------------------------------------

class _TextProjectInputFormater {
  final _formmatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      // return oldValue;
      print('A'); //kullanıcı a tuşuna basarsa  kodda a yazdır.
    }
    return newValue;
  });
}

class _InpuDecoration {
  final _emailInput = const InputDecoration(
    prefixIcon: const Icon(
      Icons.email_outlined,
    ),
    border: const OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.black,
            width:
                30)), //  border ile texte kutu çizer kenarlık stili ve rengi ekleyebiliriz.
    hintText: LanguageItems
        .mailTitle, //hintext ile text in içine geçici bir yazı yazar .kullanıcı yazı yazarsa bu yazı silinir.
    labelText: LanguageItems
        .mailTitle, //text kutusunun sol üst kısmında bilgilendirme metni olarak görünür. silinmez.
    fillColor: Colors
        .white, //arka plan rengi . aktif  olabilmesi için filled true yapmalıyız.
    filled: true,
  );
}
