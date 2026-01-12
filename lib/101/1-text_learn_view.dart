import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              ('Hakan YARIŞ  bu gün çalışmanın tam vakti'),
              maxLines: 3, //maximum satır sayısı
              overflow: TextOverflow
                  .ellipsis, //maksimum satırı aşarsa ... koyar .fade .clip gibi başka özelliklerde var
              // ignore: deprecated_member_use
              textScaleFactor:
                  1, //yazını boyutlandırılmasını yapar mesela 1.5 yaparsak yazı bir buçuk
              //kat büyür. bunun bir kontrol mekanizmasına bağlarsak kullnıcı yazıyı büyültüp küçültebilir

              textAlign: TextAlign.left, // sola sağa yaslama ve ortalama
              style: TextStyle(
                  wordSpacing: 40, //İki kelime arasından mesafe
                  letterSpacing: 2, //iki harf arasındaki mesafe
                  decoration: TextDecoration
                      .underline, //altı çizgili verme .overline üstüçizgili  .lineThrough kelimenin ortası çizgili .
                  fontSize: 25,
                  fontStyle: FontStyle.italic, // italic
                  height: 1.5, //iki satır arasındaki mesafe gibi
                  fontWeight: FontWeight.w600, // yazının kalınlığı
                  color: ProjectColors.welcomeColor,
                  //fontFamily ile yazının fontunu değiştiririz.
                  fontFamily:
                      'RubicBurned' // ttf uzantılı fontu internetten indiriyoruz.projemize assets klasörü
                  //açıyoruz.içine fonts klasörü açıyoruz .ttf  klasörünü buraya atıyoruz.
                  //sonra pubspec.yaml klasörünün içine  https://synta-x.com/flutter-ile-yapilmis-olan-bir-uygulamaya-nasil-font-eklenir/
                  ),
            ),
            Text(('Hakan YARIŞ  '),
                maxLines: 3, //maximum satır sayısı
                overflow: TextOverflow
                    .ellipsis, //maksimum satırı aşarsa ... koyar .fade .clip gibi başka özelliklerde var
                textScaleFactor:
                    1, //yazını boyutlandırılmasını yapar mesela 1.5 yaparsak yazı bir buçuk
                //kat büyür. bunun bir kontrol mekanizmasına bağlarsak kullnıcı yazıyı büyültüp küçültebilir

                textAlign: TextAlign.left, // sola sağa yaslama ve ortalama
                style: ProjectStyle.welcomStyle),
            //style dosyasını ProjectStyle clasından çektik

            Text(('Hakan YARIŞ THEME.OF '),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textScaleFactor: 1,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headlineMedium),

            Text(('Hakan YARIŞ THEME.OF a renk ekleme '),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textScaleFactor: 1,
                textAlign: TextAlign.left,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(color: Colors.red)),
            //copyWith ile hazır olarak aldığımız teheme.of u kopyasını oluşturu ve biz onun üzerinde değişiklik yaparız.renk boyut v.b.
          ],
        ),
      ),
    );
  }
}

//hazır bir textstili(TextStyle)  widgeti yazalım ve mainde kullanalım.
class ProjectStyle {
  static TextStyle welcomStyle = TextStyle(
      wordSpacing: 40, //İki kelime arasından mesafe
      letterSpacing: 2, //iki harf arasındaki mesafe
      decoration: TextDecoration
          .underline, //altı çizgili verme .overline üstüçizgili  .lineThrough kelimenin ortası çizgili .
      fontSize: 25,
      fontStyle: FontStyle.italic, // italic
      height: 1.5, //iki satır arasındaki mesafe gibi
      fontWeight: FontWeight.w600, // yazının kalınlığı
      color: Color.fromARGB(255, 9, 161, 78));
}

//projemizde kullanılmak üzere  renk sınıf oluşturuyoruz.ve mainde kullanıyoruz.
class ProjectColors {
  static Color welcomeColor = Colors.yellow;
}
