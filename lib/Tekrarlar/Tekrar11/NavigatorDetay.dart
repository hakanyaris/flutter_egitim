import 'package:flutter/material.dart';

class NavigatorDetay extends StatefulWidget {
  const NavigatorDetay({super.key});

  @override
  State<NavigatorDetay> createState() => _NavigatorDetayState();
}

class _NavigatorDetayState extends State<NavigatorDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            icon: Icon(Icons.check),
            label: Text('Onayla'),
          ),
        ));
  }
}
