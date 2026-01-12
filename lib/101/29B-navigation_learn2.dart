import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/11-paddin_Learn.dart';
import 'package:flutter_application_1/101/14-image_Learn.dart';

import '30-navigate_detail_learn.dart';

//2. ders : bir liste yapacağız  listenin bir elemanını tıkladığımızda başka sayfaya gitsin o sayfada bir buton olsun
//butona bastığında bir değer alarak geri dönsün  fakat geri döndüğünde listenin o elemanı farklı renk olsun
class NavigationLearn2 extends StatefulWidget {
  const NavigationLearn2({super.key});

  @override
  State<NavigationLearn2> createState() => _NavigationLearn2State();
}

class _NavigationLearn2State extends State<NavigationLearn2>
    with NavigateManager {
  // bir tane  boş liste oluşturduk
  List<int> selectedItems = [];

// boş listeye eleman eklemek için bu metodu kullanacağız
  void addSelect(int index) {
    setState(() {
      selectedItems.add(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1 . ders
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     //bu fonksiyonu navigation için  aşağıda kendimiz hazırladık.
      //     navigateToWidget(context, const NavigationDetailLearn()); //1.ders
      //   },
      //   child: Icon(Icons.navigation_rounded),
      // ),

      body: ListView.builder(itemBuilder: (context, index) {
        return TextButton(
          onPressed: () async {
            //2. ders

            final response = await navigateToWidgetNormal<bool>(
                context, NavigationDetailLearn());

            //gidilen sayfadan  geri dönüşte diğer sayfadan pop ile herhangi bir veri gelirse (o veriyi orada ayarladık true )   if e girer
            if (response == true) {
              //eğer Onaylaya tıklanırsa boş listeye listenin index numarasını ekler.ve ekleme işlem setState ile sarılı olduğu için ekran
              //yeniden çizilir ve context yeniden başlatılır.
              addSelect(index);
            }
          },
          child: Placeholder(
              // sayfadan  yeniden çizilirken selectedItems listesi  o an çizilen indexi içeriyorsa  Placeholder'ın rengi yeşil
              //içermiyorsa paceholder ın rengi kırmızı olur.
              color: selectedItems.contains(index) ? Colors.green : Colors.red),
        );
      }),
    );
  }
}

mixin NavigateManager {
  //1. dersin elemanı
  // void navigateToWidget(BuildContext context, Widget widget) {
  //   Navigator.of(context).push(MaterialPageRoute(
  //       builder: (context) {
  //         return widget;
  //       },
  //       fullscreenDialog: true,
  //       settings: RouteSettings()));
  // }

//2. dersin elemanı
// push  yönlendirdiği sayfadan geri dönüşte değer döndürebilir demek bunu da Futur<T> olarak alıyoruz.
// <T>  diğer sayfadan dönüş değerini alıyoruz.
  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: RouteSettings()));
  }
}
