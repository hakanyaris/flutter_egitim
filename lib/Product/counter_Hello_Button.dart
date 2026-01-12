import 'package:flutter/material.dart';
import 'package:flutter_application_1/Product/Language/language_Item.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

//23 derste bunu  kullanıyoruz
class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _counterCustom = 0;
  void _updateCounter() {
    setState(() {
      ++_counterCustom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          _updateCounter();
        },
        //LanguageItems.welcomeTitle static  klasörünün içine (Prodctun klasörünün  içinde) textlerimizi koyuyuryz
        child: Text('${LanguageItems.welcomeTitle} $_counterCustom'),
      ),
    );
  }
}
