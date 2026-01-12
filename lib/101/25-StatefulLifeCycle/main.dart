import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/25-StatefulLifeCycle/page/first_page.dart';
import 'package:flutter_application_1/101/25-StatefulLifeCycle/widget/number_widget.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: First_Page(),
    );
  }
}
