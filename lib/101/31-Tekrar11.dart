import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/28-list_view_Builder.dart';
import 'package:flutter_application_1/101/31-Tekrar11Bagli.dart';

class Tekrar11 extends StatefulWidget {
  const Tekrar11({super.key});

  @override
  State<Tekrar11> createState() => _Tekrar11State();
}

class _Tekrar11State extends State<Tekrar11> with NavigatorManager {
  List<int> selectItems = [];

  @override
  void AddSelect(int index) {
    setState(() {
      selectItems.add(index);
    });
  }

  void RemoveSelect(int index) {
    setState(() {
      selectItems.remove(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return TextButton(
                onPressed: () async {
                  final responsive =
                      await navigatorToWidget<bool>(context, Tekrar11Bagli());
                  if (responsive == true) {
                    if (selectItems.contains(index)) {
                      RemoveSelect(index);
                    } else {
                      AddSelect(index);
                    }
                  }
                },
                child: Placeholder(
                    color: selectItems.contains(index)
                        ? Colors.green
                        : Colors.red));
          },
        ));
  }
}

mixin NavigatorManager {
  Future<T?> navigatorToWidget<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return widget;
      },
    ));
  }
}
