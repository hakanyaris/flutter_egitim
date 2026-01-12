import 'package:flutter/material.dart';

class PaddingLearnView extends StatelessWidget {
  const PaddingLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          // 1- bir companenti padding ile sarmalarsak  bu companentin dışarıdaki bir companent ve ekran kenarı arasndaki
          // mesafeyi ayarlar
          child: Container(color: Colors.blueGrey, height: 100),
          padding: EdgeInsets.zero, //zero measfe sıfır yapışık yani
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: 10, horizontal: 20), //2-verticol dikey horizontal yatay
          child: Container(color: Colors.blueGrey, height: 100),
        ),
        Padding(
          padding: ProjectPadding()
              .pagePaddingVertical, //3-main dışındaki clastan alıyoruz.
          child: Container(color: Colors.blueGrey, height: 100),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left:
                  10), //only ile dört tarftan ayrı ayrı mesafe belirleyebiliriz.
          child: Text('HAKAN'),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 10) +
                EdgeInsets.symmetric(
                    horizontal:
                        20), //İki tane paddin konumu toplarsak o toplamını alıp uygular
            child: Container(
              child: Text('HAKAN'),
            )),
      ],
    );
  }
}

//3-bizim sayfalarımız hepsinin  sağ ve sol ekrandan genişliği 10 ise bunu bir class ile standart hale getirebiliriz.
class ProjectPadding {
  final pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
}
