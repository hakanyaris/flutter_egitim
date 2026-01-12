import 'package:flutter/material.dart';

class PageViewOrnek extends StatefulWidget {
  const PageViewOrnek({super.key});

  @override
  State<PageViewOrnek> createState() => _PageViewOrnekState();
}

class _PageViewOrnekState extends State<PageViewOrnek> {
//2-
  PageController _pageController = PageController(initialPage: 0);
  int _aktifSayfa = 0;
  List<Widget> _pages = [SayfaBir(), SayfaIki(), SayfaUc()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      //3-
      body: Stack(children: [
        //4-PageView.builder 24 dersteki page viewlerin döngü şeklinde  kolayca eklendiği yerdir.
        PageView.builder(
            itemCount: _pages.length,
            controller: _pageController,
            onPageChanged: (value) {
              setState(() {
                _aktifSayfa = value;
              });
            },
            itemBuilder: (context, index) {
              return _pages[index];
            }),

        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 100, //5-
          child: Container(
              color: Colors.black54,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    
                    _pages.length,
                    (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                              onTap: () {
                                _pageController.animateToPage(index,
                                    duration: Duration(microseconds: 300),
                                    curve: Curves.easeIn);
                              },
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: _aktifSayfa == index
                                    ? Colors.amber
                                    : Colors.grey,
                              )),
                        )),
              )),
        ),
      ]),
    );
  }
}

// 1-
class SayfaBir extends StatelessWidget {
  const SayfaBir({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Center(
          child: Text('Sarı sayfa',
              style: Theme.of(context).textTheme.displayLarge)),
    );
  }
}

class SayfaIki extends StatelessWidget {
  const SayfaIki({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
          child: Text('Mavi sayfa',
              style: Theme.of(context).textTheme.displayLarge)),
    );
  }
}

class SayfaUc extends StatelessWidget {
  const SayfaUc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
          child: Text('Yeşil sayfa',
              style: Theme.of(context).textTheme.displayLarge)),
    );
  }
}
