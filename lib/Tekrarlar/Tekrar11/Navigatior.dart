import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar10.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar11/NavigatorDetay.dart';

class Navigator_Learn2 extends StatefulWidget {
  const Navigator_Learn2({super.key});

  @override
  State<Navigator_Learn2> createState() => _Navigator_Learn2State();
}

class _Navigator_Learn2State extends State<Navigator_Learn2>
    with NavigatorManager {
  List<int> liste = [];

  void listeyeEkle(int index) {
    setState(() {
      liste.add(index);
    });
  }

  void listedenCikar(int index) {
    setState(() {
      if (listedeVarmi(index)) {
        liste.remove(index);
      }
    });
  }

  bool listedeVarmi(int index) {
    return liste.contains(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.of(context).push(MaterialPageRoute(
      //       builder: (context) {
      //         return Navigator_Learn();
      //       },
      //     ));
      //   },
      // ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final donusdeger =
                  await navigateToWidgetNormal<bool>(context, NavigatorDetay());

              if (donusdeger!) {
                if (listedeVarmi(index)) {
                  listedenCikar(index);
                } else {
                  listeyeEkle(index);
                }
              }
            },
            child: Placeholder(
              color: listedeVarmi(index) ? Colors.green : Colors.red,
            ),
          );
        },
      ),
    );
  }
}

mixin NavigatorManager {
  // void navigateToWidget(BuildContext context, Widget widget) {
  //   Navigator.of(context).push(MaterialPageRoute(
  //       builder: (context) {
  //         return widget;
  //       },
  //       settings: RouteSettings()));
  // }

  Future<T?> navigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        settings: RouteSettings()));
  }
}
