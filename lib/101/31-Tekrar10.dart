import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/31-Tekrar9.dart';

import '31-Tekrar10Bagli.dart';

class Tekrar10 extends StatefulWidget {
  const Tekrar10({super.key});

  @override
  State<Tekrar10> createState() => _Tekrar10State();
}

class _Tekrar10State extends State<Tekrar10> with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              final resposive =
                  await navigatorToWidget<bool>(context, Tekrar10Bagli());

              if (resposive == true) {
                print('true geldi');
              }
            },
            child: const Text('Git')),
      ),

      //------------------------------------

      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return Tekrar9();
          },
        ));
      }),
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
