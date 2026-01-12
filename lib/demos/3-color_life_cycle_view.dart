import 'package:flutter/material.dart';
import 'package:flutter_application_1/demos/2-color_demos_view.dart';

//  bir x butonu olsun basınca ColorDemo(demos klasörü içindeki 2. ders)  sayfasındaki sayfa rengini pembe yapsın
class ColorLifeCycleView extends StatefulWidget {
  ColorLifeCycleView({super.key});

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backGroundColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              setState(() {
                _backGroundColor = Colors.pink;
              });
            },
            icon: Icon(Icons.clear_outlined))
      ]),
      body: Column(
        children: [
          Spacer(),
          Expanded(child: ColorsDemo(initialColor: _backGroundColor))
        ],
      ),
    );
  }
}

//20.00 da kaldım