import 'package:flutter/material.dart';
import 'package:flutter_application_1/Core/random_image.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.screen_search_desktop_outlined),
            iconSize: 35,
          ),
          backgroundColor: Colors.transparent),
      body: Column(children: [
        Expanded(
            flex: 4,
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Positioned.fill(
                    bottom: 25,
                    child: Image.asset(
                      "images/1084-536x354-grayscale.jpg",
                      fit: BoxFit.fill,
                    )),
                Positioned(
                    height: 50,
                    width: 200,
                    bottom: 0,
                    child: Card(
                      color: Colors.white,
                    ))
              ],
            )),
        Spacer(
          flex: 6,
        )
      ]),
    );
  }
}
