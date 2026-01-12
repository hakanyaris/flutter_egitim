import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/29A2-ikinciSayfa.dart';

//1A- Navigator  ile tasarladığımız başka bir sayfaya gitme(29A2-IkinciSayfa) ordan tekrar geri gelme  ,
//ikinci  sayfaya değer gönderme ,   geri gelirken ikinci sayfadan değer alma işlemlerini gerçekleştirir.

class NavigationLearn1 extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  
  Widget build(BuildContext context) {
    //6A-PopScope  :ikinci sayfa açıldıktan sonra ikinci sayfadaki appBarda ook işerti ile geri tuşuna basılınca :
    //PopScope dersini burda uygulamadım bunu araştırıp ileride öğrenmem gerekiyor.
    return Scaffold(
      body: Column(
        children: [
          //5A-   (5D YE KADAR)
          TextField(
            controller: _controller,
          ),
          Center(
              //1B-
              child: ElevatedButton(
                  onPressed: () {
                    _ikinciSayfayiAc(context);
                  },
                  child: Text('İkinci Sayfaya Git'))),
        ],
      ),
    );
  }

//2-
  void _ikinciSayfayiAc(BuildContext context) {
    MaterialPageRoute sayfaYolu =
        MaterialPageRoute(builder: (BuildContext context) {
      return IkinciSayfa(_controller.text);
    });
    ////////////////////////safaYolu içindeki  IkinciSayfa() sayfasında yönlendirdik orada appBarda solda otomatik beliren ok işareti ile geri bu sayfaya dönüyoruz
    Navigator.push(context, sayfaYolu).then((gelenVeri) {
      if (gelenVeri != null) { /////5D-then ile 5c- deki .pop da ki ikinci sayfadan gelen veri buraya gelir .
        print(gelenVeri);
      }
    });
    //Navigator.pushReplacement ile ikinciSayfa() daki geri tuşunu iptal ederdi. yani ilk sayfaya dömezdik.
    // Mesela Giriş sayfası ile giren bir kullanıcı giriş sayfasına dönmesini istemeyiz Navigator.pushReplacement kullanırız .
  }
}
