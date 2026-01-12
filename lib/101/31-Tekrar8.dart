import 'package:flutter/material.dart';

class Tekrar8 extends StatefulWidget {
  const Tekrar8({super.key});

  @override
  State<Tekrar8> createState() => _Tekrar8State();
}

class _Tekrar8State extends State<Tekrar8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              children: [
                Column(children: [
                  TextWidget(
                      //Extrace Widet
                      title: 'Search for place',
                      themeText: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.black)),
                  TextWidget(
                      title: 'Destination',
                      themeText: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.w600)),
                ]),
              ],
            ),

            //------------------------------------------

            Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                    height: 250,
                    child:
                        ListView(scrollDirection: Axis.horizontal, children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: StackImage(
                          sizedHeight: 250,
                          sizedWidth: 150,
                          image: 'images/three/tree_1.png',
                          treeName: 'ÇAM AĞACI',
                          history: '07.04.2023',
                          point: '6,4',
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: StackImage(
                            sizedHeight: 250,
                            sizedWidth: 150,
                            image: 'images/three/tree_2.png',
                            treeName: 'MEŞE AĞACI',
                            history: '07.04.2023',
                            point: '6,2',
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: StackImage(
                            sizedHeight: 250,
                            sizedWidth: 150,
                            image: 'images/three/tree_3.png',
                            treeName: 'GÜRGEN AĞACI',
                            history: '07.04.2023',
                            point: '5,2'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: StackImage(
                            sizedHeight: 250,
                            sizedWidth: 150,
                            image: 'images/three/tree_4.png',
                            treeName: 'AKASYA AĞACI',
                            history: '07.04.2023',
                            point: '4,2'),
                      ),
                    ]))),

            //-------------------------------

            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('VİEW ALL',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Color.fromARGB(255, 114, 14, 14))),
              ),
            ),

            //----------------------------

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Popular',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600)),
                  Text('New',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600)),
                  Text('Recomended',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600)),
                  Text('Save',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w600))
                ],
              ),
            ),
            Row(children: [
              Column(
                children: [
                  StackImage(
                      sizedHeight: 150,
                      sizedWidth: 150,
                      image: 'images/three/tree_1.png',
                      treeName: 'ÇAM AĞACI',
                      history: '07.04.2023',
                      point: '4,2'),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: StackImage(
                          sizedHeight: 150,
                          sizedWidth: 150,
                          image: 'images/three/tree_2.png',
                          treeName: 'ÇAM AĞACI',
                          history: '07.04.2023',
                          point: '4,2')),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: StackImage(
                    sizedHeight: 300,
                    sizedWidth: 150,
                    image: 'images/three/tree_3.png',
                    treeName: 'ÇAM AĞACI',
                    history: '07.04.2023',
                    point: '4,2'),
              ),
            ])
          ],
        ),
      ),
    );
  }
}

//-----------------------------------------------------

class StackImage extends StatelessWidget {
  const StackImage(
      {super.key,
      required this.sizedHeight,
      required this.sizedWidth,
      required this.image,
      required this.treeName,
      required this.history,
      this.point});

  final double sizedHeight;
  final double sizedWidth;
  final String image;
  final String treeName;
  final String history;
  final String? point;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: sizedHeight,
        width: sizedWidth,
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 13, 108, 185),
                borderRadius: BorderRadius.circular(30)),
          ),
          Image.asset(
            image,
            fit: BoxFit.fill,
          ),
          Positioned(
            bottom: 50,
            child: Text(
              treeName,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
          Positioned(
            bottom: 30,
            child: Text(
              history,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.black45, fontWeight: FontWeight.w700),
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Text(
              point ?? '',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
        ]));
  }
}

//------------------------------------------

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.title, required this.themeText});
  final String title;
  final TextStyle? themeText;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(title, textAlign: TextAlign.left, style: themeText),
    );
  }
}
