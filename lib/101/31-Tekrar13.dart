import 'package:flutter/material.dart';

import '31-Tekrar13Bagli.dart';

class Tekrar13 extends StatefulWidget {
  const Tekrar13({super.key});

  @override
  State<Tekrar13> createState() => _Tekrar13State();
}

class _Tekrar13State extends State<Tekrar13> with NavigatorManager {
  final List<int> items = [];
  void addSelect(int index, bool isAdd) {
    setState(() {
      isAdd ? items.add(index) : items.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(itemBuilder: (context, index) {
          return TextButton(
            onPressed: () async {
              final responsive = await navigatorToWidget<bool>(
                  context, Tekrar13Bagli(isOkey: items.contains(index)));
              if (responsive is bool) {
                addSelect(index, responsive);
              }
            },
            child: Placeholder(
                color: items.contains(index) ? Colors.green : Colors.red),
          );
        }));
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
