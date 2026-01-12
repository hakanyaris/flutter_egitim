import 'package:flutter/material.dart';

// 3 tane buton olsun butona  her bir butona  sayfanın arkaplan rengi değişsin

class ColorsDemo extends StatefulWidget {
  ColorsDemo({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorsDemo> createState() => _ColorsDemoState();
}

class _ColorsDemoState extends State<ColorsDemo> {
  Color? backGroundColor;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    backGroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorsDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != backGroundColor && widget.initialColor != null) {
      changeBackGroundColor(widget.initialColor!);
    }
  }

  void changeBackGroundColor(Color color) {
    setState(() {
      backGroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        // ignore: prefer_const_literals_to_create_immutables
        bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTap, items: [
          const BottomNavigationBarItem(
              icon: _ColorsContainer(color: Colors.red), label: 'Red'),
          const BottomNavigationBarItem(
            icon: _ColorsContainer(color: Colors.yellow),
            label: 'Yellow',
          ),
          const BottomNavigationBarItem(
              icon: _ColorsContainer(color: Colors.blue), label: 'Blue')
        ]));
  }

  void _colorOnTap(int value) {
    if (value == _myColors.red.index) {
      changeBackGroundColor(Colors.red);
    } else if (value == _myColors.yellow.index) {
      changeBackGroundColor(Colors.yellow);
    } else if (value == _myColors.blue.index) {
      changeBackGroundColor(Colors.blue);
    }
    ;
  }
}

enum _myColors { red, yellow, blue }

class _ColorsContainer extends StatelessWidget {
  const _ColorsContainer({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(height: 10, width: 10, color: color);
  }
}
