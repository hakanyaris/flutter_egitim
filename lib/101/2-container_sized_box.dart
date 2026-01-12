import 'package:flutter/material.dart';

class ContainerSizedBoxLaern extends StatelessWidget {
  final Size sizeEkledik = Size(100, 80);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          //kaydırma özelliği
          child: Column(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Text(
                    'Sesli kontrolün ardından termal kamera ile yapılan tespitte bir kişinin hayatta olduğu belirlendi. Bunun üzerine çalışma başlatan ekipler, enkazda açtıkları galeriden zamana karşı mücadele sürdürdü. Ekipler, temas kurulan ve yaralı olduğu'),
              ),
              SizedBox.shrink() //boş bir kutu olşturur
              ,
              SizedBox.fromSize(
                  size:
                      sizeEkledik), //dışarıda(yukarıda) tanımladığımız bir size(boyut) burada eklliyoruz.
              SizedBox.square(
                dimension: 50,
                child: Text('asdafadffsfdgsdassgfgdasdadfffsasdsdfaxz'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: Text('container'),
              ),
              //------------------------------------------------------------------
              Container(
                padding: EdgeInsets.all(10), //içindeki nesneye olan uzaklığı
                margin: EdgeInsets.all(20), //dışındaki nesnelere olan uzaklığı
                constraints: BoxConstraints(
                  maxHeight: 150,
                  maxWidth: 150,
                ), //burada comtainer in alabileceği maximum  ve minimum genşlik ve yükseliği belirledik.

                child: Text('Ses adfdsffdsf'),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(10), //köşeleri yuvarlatır
                    // shape: BoxShape.circle, //kutuyu yuvarlak yapar
                    border: Border.all(width: 10, color: Colors.black87),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(4, 5),
                          blurRadius: 15)
                    ],
                    // gradient:
                    //     LinearGradient(colors: [Colors.white12, Colors.yellow]),
                    gradient: LinearGradient(
                        colors: [Colors.deepPurple, Colors.black, Colors.teal],
                        begin:
                            Alignment.topLeft, //gradiente sol üst köşeden başla
                        end: Alignment
                            .bottomRight, // gradienti sağ alt köseye kaydır.
                        stops: [
                          .2, //yani 0.2
                          .5,
                          .9
                        ]), //gradient renk karışım merkezleri  3 renk için üç tane sayı girilmiştir.
                    color: Colors.amber),
              ),
              //------------------------------------------------------------------
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                alignment: Alignment(0.3,
                    -0.4), //içindeki texi x ekseninde 0.3 y ekseninde -0,4 değerinde kaydırır.
                child: Text(
                  'Aligment',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              //------------------------------------------------------------------
              Container(
                padding: EdgeInsets.all(10),
                child: Text('Text1'),
                decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(),
                    borderRadius: BorderRadius.horizontal(
                        left: Radius.circular(5), right: Radius.circular(20))),
              ), //.horizoontal yani yataydaki sol ve sağ kenarda yuvarlaklık yapar
              //------------------------------------------------------------------
              Container(
                child: Text('text2'),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    border: Border.all(),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30))),
              ), // bütün köşeleri ayrı ayrı yuvarlaklık  verebiliriz.
              //------------------------------------------------------------------
              Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        //Containere yukarı aşağı saga sola ayrı ayrı farklı renklerde kenarlık ekleyebiliriz.
                        top: BorderSide(color: Colors.blue, width: 7.0),
                        right: BorderSide(color: Colors.red, width: 7.0))),
              ),

              //------------------------------------------------------------------

              Transform.translate(
                ///////.translate    cocuğu olan aşağıdaki kontaineri x ve y eksenlerinde(ofset) kaydırır.
                //Transform.scale // cocuğu olan aşağıdaki kontaineri  scale oranında küçültür büyültür.scaleX ekseninde scale Y y ekseninde büytür
                //Transform.rotate// cocuğu olan aşağıdaki kontaineri  angle: 40 * 3.14 / 180, oranında z ekseninde döndürür
                // offset: Offset(5, 100),
                // angle: 40 * 3.14 / 180,
                offset: Offset(2, 3),
                child: Container(
                  child: Text('Flutter', style: TextStyle(fontSize: 40)),

                  // transform: Matrix4.rotationZ(70 * 3.14 / 180)
                  ////////////---------------------------------//Z Eksninde 70 derece döndürür
                  //transform: Matrix4.rotationX(70 * 3.14 / 180) //X Eksninde 70 derece döndürür
                  //transform: Matrix4.rotationY(70 * 3.14 / 180)
                  //transform: Matrix4.skewX(0.5) // x ekseninde 0.5 değerinde eğdirir
                  //transform:Matrix4.skewY(-0.5) // Y ekseninde -0.5 değerinde eğdirir
                  // transform:Matrix4.skew(0.5, 0.4) // X ekseninde 0.5 değerinde  Y ekseninde 0.4 eğdirir.
                ),
              ),
              //------------------------------------------------------------------
              Container(
                  padding: EdgeInsets.all(10), //içindeki nesneye olan uzaklığı
                  margin:
                      EdgeInsets.all(20), //dışındaki nesnelere olan uzaklığı
                  constraints: BoxConstraints(
                    maxHeight: 150,
                    maxWidth: 150,
                  ), //burada comtainer in alabileceği maximum  ve minimum genşlik ve yükseliği belirledik.
                  child: Text('Ses adfdsffdsf'),
                  decoration: ProjectUtility
                      .boxDecortion), //BoxDecoration u aşağıda class olarak tanımlayıp burada kullandık
              //------------------------------------------------------------------
              Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: //deniz fili görseli
                            AssetImage('images/1084-536x354-grayscale.jpg'),
                        fit: BoxFit.fitWidth)),
                foregroundDecoration: BoxDecoration(
                    //foregroundDecoration anlamı önplan decorasyonu
                    image: DecorationImage(
                        image: AssetImage('images/bird-5818932_640.png'),
                        scale: 5,
                        alignment: Alignment.topLeft)),
                child: Text('deniz fili görseli'),
                //Container katman sıralaması şu şekildedir; en arkada decoration, ortada child, en önde foregroundDecoration gözükür.
              )
            ],
          ),
        ));
  }
}

//-------------------------------------------------------------------------------------
//bir projede cotainer BoxDecoration hep aynı standar olsun istiyorsak iki yöntem kullanabiliriz.
//1- yöntem super metodu kullanma (super  bilmiyosan dart derlseri 8. derse bak )
class ProjectContainerBoxDecoration extends BoxDecoration {
  ProjectContainerBoxDecoration()
      : super(
            borderRadius: BorderRadius.circular(10), //köşeleri yuvarlatır
            // shape: BoxShape.circle, //kutuyu yuvarlak yapar
            border: Border.all(width: 10, color: Colors.black87),
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(4, 5), blurRadius: 15)
            ],
            gradient: LinearGradient(colors: [Colors.white12, Colors.yellow]),
            color: Colors.amber);
}

//2. yöntem
class ProjectUtility {
  static BoxDecoration boxDecortion = BoxDecoration(
      borderRadius: BorderRadius.circular(10), //köşeleri yuvarlatır
      // shape: BoxShape.circle, //kutuyu yuvarlak yapar
      border: Border.all(width: 10, color: Colors.black87),
      boxShadow: [
        BoxShadow(
          color: Colors.red,
          offset: Offset(4, 5),
          blurRadius: 15,
        )
      ],
      gradient: LinearGradient(colors: [Colors.white12, Colors.yellow]),
      color: Colors.amber);
}
