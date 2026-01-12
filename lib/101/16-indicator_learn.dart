import 'package:flutter/material.dart';

class IndicatorLearnView extends StatelessWidget {
  const IndicatorLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(actions: [CenterCircularIndicator()]),
        body: Column(
          children: [
            LinearProgressIndicator(),
            SizedBox(
              height: 40,
            ),
            CenterCircularIndicator(),
          ],
        ));
  }
}

class CenterCircularIndicator extends StatelessWidget {
  const CenterCircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      //  color: Colors.white,  bunu  maide theme. da düzenledik
      strokeWidth: 10, // kenarlığı kalınlaştırır
      // value: 0.9,
      // backgroundColor: Colors.amber,
    ));
  }
}
