import 'package:flutter/material.dart';

//Bir state yaşam döngüsünün çalışma şırası
//1-StatefulWidget  claso consakcır sonra   createState
//2- Aşağıdaki State<StatefullLiveCycle> clası consakcısı
//3-initState
//4-didChangeDependencies   setstate
//5-didUpdateWidget
//6-deactivate
//7-dispose

//1-müsteriden alınan mesaj tek veya çift ise buna göre haraket et
class StatefullLiveCycle extends StatefulWidget {
  StatefullLiveCycle({super.key, required this.message}) {
    print("StatefulWidget consakcı");
  }
  final String
      message; //bu sayfa StatefullLiveCycle mainde çağrılırken string bir değer istiyoruz
  @override
  State<StatefullLiveCycle> createState() => _StatefullLiveCycleState();
}

class _StatefullLiveCycleState extends State<StatefullLiveCycle> {
  String _message = '';
  late final bool _isOdd;
  _StatefullLiveCycleState() {
    print("_StatefullLiveCycleState consakcır ");
    // burdaki consakcır içerisinden yukarıdaki widgete  erişşimi yok.mesela widget.message ulaşamayız bu kodu yazarsak
    //kod kızarmaz fakar hata kodu fırlatır.  fakat  inintstate den ulaşabiliriz.
  }

  @override
  //en aşağıda açıklaması var .İnitState  den farkı burada contex verilerine ulaşabiliriz.Yani o anki ekranda
  //çizilen contexe ait verilere(mesela ekran genişliğine) ulaşabiliriz.
  void didChangeDependencies() {
    super.didChangeDependencies();

    print(' didChangeDependices çalıştı');
  }

  @override
  //widgetimiz  en küçük (yotum satırı olasa dahi ) güncellendiğinde  didUpdateWidget çalışır.sayfa ilk açıldığında çağrılmaz.
  void didUpdateWidget(covariant StatefullLiveCycle oldWidget) {
    //  oldWidget.message  mesaj  maindeki mesaj değiştirdiğiizde değişmeden önceki oldWidget.message  ile ulaşabiliriz.Yani oldWidget widgetimizin  güncellersek güncelnmemiş bir önceki widgetin bilgilerine burada n ulaşabiliriz.
    super.didUpdateWidget(oldWidget);
    if (oldWidget.message != widget.message) {
      //eğer eşit değilse eşitle  yani üst sınıftan gelen mesajı  güncelle ve devamını getir.
      _message = widget.message;
      _computeName();
      setState(() {});
      print('didUpdateState Messaj Güncellendi.');
    }
    print('didUpdateState çalıştı');
  }

  // 1-müşteriden gelen msj tek ise yanına tek yoksa çift yaz.
  @override
  // 1-initstate metodu tıpku consakcıra benzer aşağıdaki contex çizilmeden initstate çalışır sonra ekran çizilir(contex)
  // eğer mainden  mesajı değiştirirsek  initstate çalışmayacağı için mesjgüncellenmez . yeniden başlat yaparsak  o zamançalışır
  void initState() {
    super.initState();
    _message = widget.message;
    //widget.message yani en yukarıdaki StatefullLiveCycle   classının consakcırındaki message
    //stringini burada çağırmak için başına widget. koymalıyız.
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('initstate çalıştı');
  }

  void deactive() {}
  @override
  //disponse içinde bulunduğumuz StatefullLiveCycle sayfası silindiğinde çağrılır.
  void dispose() {
    super.dispose();
    print('widget sayfası kapandı.');
    //bu dispose  kısmında  genelde locigler null a çekilir mesela _message=''; yapılabilir.
    _message = '';
  }

  void _computeName() {
    if (_isOdd) {
      _message += 'Çift';
    } else {
      _message += 'Tek';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            //1-sayfanın en yukarısındaki StatefullLiveCycle widgetin  consakcırındaki messageye almak için widget.message
            title: Text(_message)

            // _isOdd
            // // isOdd tek mi
            //     ? Text('Kelimetek')
            //     : Text('KelimeÇift')
            ),
        body: _isOdd
            ? TextButton(
                onPressed: () {},
                child: Text(_message),
              )
            : ElevatedButton(onPressed: () {}, child: Text(_message)));
  }
}
//1.03 kaldım 1 saat

//2. initState(): State nesnesi oluşturulduğunda çalışan ilk metottur. Sadece bir kere çağırılır. Sadece çağırdığımızda çalışmasını
// istediğimiz değerler için kullanırız. Örneğin; widget içerisinde değişkenlik gösterecek değerler ya da bir nesnenin oluştuğundan
//emin olmak için kullanabiliriz.

//3. didChangeDependencies(): Bir state değişikliği varsa ve initState() ve setState() ‘den hemen sonra çağırılır.  Bu metodu, bu iki case
//arasında yapmak istediğimiz işlemler için kullanırız. Bu metottan sonra build metodu çağılır. Örneğin; build metodunu ağırlaştırmamak
//için API işlemlerini burada yapabiliriz.

//4. build(): Her ne zaman widget state değiştirmek istese çağırılır. Yani yaşam döngüsü boyunca defalarca çağırılabilir.
//(Örneğin; didUpdateWidget() ya da setState() metotlarından sonra çağırılır.) Widget ağaç yapının oluştuğu, döndürüldüğü yerdir.
// Bu metot olmadan state nesnesini oluşturamayız.

//5. didUpdateWidget(): Parent widget ‘ta bir state değişikliği varsa bununla ilgili olarak state değişikliği yapılması gereken
//subWidget ‘lar için kullanırız. Widget aynı runtime ‘da rebuilt edilir. Bu metottan sonra her zaman build() metodu çağırılarak widget
//tekrar oluşturulur.Widget değişikliğinde emin olmak istediğimiz bir durum varsa ya da widget update oldu mu kontrol ederek gerekli
//işlemleri yapmak için kullanabiliriz. Örneğin; bir widget içerisinde custom bir widget kullanmışsak,
//widget ‘taki değişikliklere bağlı olarak custom widget ’ta da değişiklik olması gerekiyorsa buradaki state değişikliklerini yapmak için
//kullanabiliriz.

//6. setState(): UI ‘ı etkileyebilecek bir durum değişikliğini bildirmek için kullanılır. Sonrasında build() metodu çağırılır ve
//widget tekrar çizilir.

//7. dispose(): State widget ağaç yapısından kalıcı olarak silindiğinde çağırılır. Nesnemize ait hafıza, listener vb. bağlantılı olduğu
//yapılar varsa bağlantıları kopartılır.
