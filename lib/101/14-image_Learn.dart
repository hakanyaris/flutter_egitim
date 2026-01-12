import 'package:flutter/material.dart';

class ImageLarnView extends StatelessWidget {
  const ImageLarnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1-image config v.b birçok verileri eklemek için  proje klasörü içinde assents veya images (başka bir şey de olabilir) adında bir klasör oluşturuyoruz.
      //2- sonra projede kulanmak isrediğimiz resimi bu klasörün içine atıyoruz
      //3- sonra pubspec.yml gidip assent i açıp  assentin altına resmin yolunu (-images/indir.jpg) ekliyoruz.

      appBar: AppBar(),
      body: Column(children: [
        //1-
        SizedBox(
            //resmimizi bir kutu içine koyarsak kutunun sınırları kendini boyutlandırır.
            height: 100,
            width: 50,
            child: Image.asset(
              "images/book_look.jpg",
              fit: BoxFit
                  .fill, // fit özelliği içinde bulunduğu kutuya göre kendini boyurlandırı fill ile kendini tam
              //kutuya göre uyarlar. cover ,fitHeight,fitWİdth ,cover, v.b üzerine gelince eğitim görseli var.
            )),
        //2-
        SizedBox(
            height: 50,
            width: 50,
            child: Image.asset(
              ImageItem.appleBirdMan,
              fit: BoxFit.fill,
            )),

        //3-resmi buradan seçmek veya kullanıcıya seçtirmek için bir yok(extact widget ile yaptık)
        SizedBox(
            height: 100, width: 50, child: PngImage(name: ImageItem.appLeBook)),

        Image.network(
          "https://freenaturestock.com/wp-content/uploads/freenaturestock-2110-1024x683.jpg",
          errorBuilder: (context, error, stackTrace) => Icon(
              Icons.abc), // eğer  internetten resim gelmezse  bu işlemi yap
        ),
        CircleAvatar(
            backgroundImage: AssetImage(
                "images/book_look.jpg")), //resmi yuvarlak çerçeve içine alır.
      ]),
    );
  }
}

class ImageItem {
  static final String appleBirdMan = "images/book_look.jpg";
  static final String teacher = "teacher-158711_1280.png";
  static const String appLeBook = "indir.jpg";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name; // değişken belirledik bu resmin yolunu tutacak
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      newMethod,
      fit: BoxFit.fill,
    );
  }

  String get newMethod => "images/$name"; // resmin yolunu bu metotda aktardık
}
