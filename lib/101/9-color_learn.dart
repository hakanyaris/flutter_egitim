import 'package:flutter/material.dart';

class ColorLearnView extends StatelessWidget {
  const ColorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            'Merhaba',
            style: TextStyle(color: Colors.red),
          ),
          Container(color: ColorItems.sulu, child: Text('Merhaba')),
        ],
      ),
    );
  }
}

class ColorItems {
  static final Color porches = Color(0xffEDBF61);
  static final Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
