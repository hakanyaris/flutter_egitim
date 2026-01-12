import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  PageController _pageController = PageController(viewportFraction: 1);
  int sayfaNumarasi = 0;
  void _sayfaNoDegistir(int index) {
    setState(() {
      sayfaNumarasi = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.all(20),
        child: Row(children: [
          Text(
            sayfaNumarasi.toString(),
            style: TextStyle(color: Colors.black),
          ),
          Spacer(),
          FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: Durations.extralong3,
                    curve: Curves.easeInOutCirc);
              },
              child: Icon(Icons.fork_left)),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: Durations.extralong3, curve: Curves.bounceInOut);
            },
            child: Icon(Icons.fork_right_sharp),
          )
        ]),
      ),
      appBar: AppBar(),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        onPageChanged: _sayfaNoDegistir,
        children: [
          Container(
            color: Colors.amber,
          ),
          Container(color: Colors.green),
        ],
      ),
    );
  }
}
