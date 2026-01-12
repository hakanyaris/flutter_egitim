import 'package:flutter/material.dart';

class CardLearnView extends StatelessWidget {
  const CardLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            const Card(
              color: ProjectColor.color,
              margin: ProjecMargin.margin,
              // Card companenti z ekseninde daha belirgin elemanlar ve güzel bir görünün katamaya yarar.elevation verir.
              child: SizedBox(height: 100, width: 300),
              shape: StadiumBorder(), // CircleBorder(),RoundedRectangleBorder()
            ),
            Card(
                color: Theme.of(context).colorScheme.error,
                margin: ProjecMargin.margin,
                child: SizedBox(height: 100, width: 100),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            const _CoustemCard(
              child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Center(child: Text('Merhaba'))),
            )
          ],
        ));
  }
}

class ProjecMargin {
  static const margin = const EdgeInsets.all(10);
}

class ProjectColor {
  static const color = Colors.white;
}

class _CoustemCard extends StatelessWidget {
  final Widget child; //extend  widget ile oluşturduğumuz _CoustemCard clasına
  // child adında bir widget tanımlayıp consakcırda bu widgetin verilmesini istiyoruz

  const _CoustemCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final roundedRectangleBorder =
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20));

    return Card(
        color: Theme.of(context).colorScheme.error,
        margin: ProjecMargin.margin,
        child: this.child, //bu clasın child  özelliği
        shape:
            roundedRectangleBorder); // ctrl . ile extract local verable tıklayıp var roundedRectangleBorder olarak yazdık.
  }
}
