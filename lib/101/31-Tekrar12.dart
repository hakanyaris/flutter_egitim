import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/31-Tekrar12Bagli.dart';

class Tekrar12 extends StatefulWidget {
  const Tekrar12({super.key});

  @override
  State<Tekrar12> createState() => _Tekrar12State();
}

class _Tekrar12State extends State<Tekrar12> with NavigatorManager {
  int UrunSayisi = 0;

  @override
  void UrunSayisiSepet() {
    setState(() {
      UrunSayisi = UrunSayisi + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextButton(
          onPressed: () async {
            final responsive =
                await navigatorToWidget(context, Tekrar12Bagli());
            if (responsive == true) {
              UrunSayisiSepet();
            }
          },
          child: Column(
            children: [
              Center(child: Image.asset('images/mutfak/pizza.jpg')),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 25),
                child: Row(
                  children: [
                    Icon(Icons.add_shopping_cart, size: 45, color: Colors.red),
                    Text(UrunSayisi.toString(),
                        style: Theme.of(context).textTheme.displaySmall)
                  ],
                ),
              )
            ],
          )),
    );
  }
}

mixin NavigatorManager {
  Future<T?> navigatorToWidget<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ));
  }
}
