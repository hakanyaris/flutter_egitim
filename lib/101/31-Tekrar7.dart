import 'package:flutter/material.dart';

class Tekrar7 extends StatefulWidget {
  const Tekrar7({super.key});

  @override
  State<Tekrar7> createState() => _Tekrar7State();
}

class _Tekrar7State extends State<Tekrar7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Color.fromARGB(255, 241, 239, 239),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 241, 239, 239),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
                height: 60,
                width: 60,
                child: Card(
                  color: Colors.white,
                  shape: CircleBorder(),
                  child: Image.asset(
                    'images/planet-7014517_1280.png',
                  ),
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textAlign: TextAlign.left,
                  'Find modern ',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w400),
                )),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                textAlign: TextAlign.left,
                'futniture for you',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(children: [
                Expanded(
                    flex: 9,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          prefixIconColor: Colors.black,
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 2),
                              borderRadius: BorderRadius.circular(20))),
                    )),
                Spacer(flex: 1),
                Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black),
                          child: Icon(
                            Icons.settings_accessibility_outlined,
                          ),
                          onPressed: () {}),
                    )),
              ]),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Best Offers',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Stack(
                children: [
                  Positioned.fill(
                    top: 50,
                    child: Card(
                      margin: EdgeInsets.only(right: 40),
                      shape: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Colors.white)),
                      color: Colors.white,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                        height: 200,
                        width: 200,
                        child:
                            Image.asset('images/office-chair-575881_640.png')),
                  ),
                  Container(
                    color: Colors.transparent,
                    height: 320,
                    width: 300,
                  ),
                  Positioned.fill(
                      top: 210,
                      left: 10,
                      bottom: 10,
                      right: 50,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(232, 7, 7, 7),
                        ),
                        child: Column(children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 9.0, top: 9.0),
                                child: Container(
                                  color: Colors.amber,
                                  child: SizedBox(
                                    width: 60,
                                    height: 21,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.yellow),
                                        onPressed: () {},
                                        child: Text(
                                          'New',
                                          style: TextStyle(color: Colors.black),
                                        )),
                                  ),
                                ),
                              )),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: SizedBox(
                              height: 35,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Body Chair',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall
                                          ?.copyWith(
                                              fontWeight: FontWeight.w600)),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                        Icons.shopping_cart_checkout_outlined,
                                        color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 11.0),
                            child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Text('150.000 TL')),
                          )
                        ]),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
