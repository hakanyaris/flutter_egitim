import 'package:flutter/material.dart';

import '../Product/counter_Hello_Button.dart';

class StatefullLearn2 extends StatelessWidget {
  StatefullLearn2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        //CounterHelloButton stateful widgetini  Product  klasörünün  içine koyduk.
        //Stateful widgeti product klasörünün içinde belirleyerek bu classı performans kaybını önledik.
        body: CounterHelloButton());
  }
}
