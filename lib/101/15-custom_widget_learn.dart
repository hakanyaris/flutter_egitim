import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, // Colon içindeki, elemanlar sola yaslı olur

          children: [
            SizedBox(
              height: 5,
            ),
            Center(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                  width: MediaQuery.of(context)
                      .size
                      .width, //sayfanın genişliğine göre
                  child: CustomFoodButton(
                      title: title)), // clası aşağıda tanımladık
            )),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomFoodButton(title: title), // clası aşağıda tanımladık
            ),
          ],
        ));
  }
}

//ElevatedButton  custom olarak burada tanımladık
class CustomFoodButton extends StatelessWidget
    with ColorUtility, PaddinUtility {
  //with konusunu dart dersinden bakabilirsin
  CustomFoodButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: red, shape: StadiumBorder()),
        onPressed: () {},
        child: Padding(
          padding: normal2xPadding,
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(color: white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}

class PaddinUtility {
  final EdgeInsets normalPadding = EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = EdgeInsets.all(16.0);
}

class ColorUtility {
  final Color white = Colors.white;
  final Color red = Colors.red;
}
