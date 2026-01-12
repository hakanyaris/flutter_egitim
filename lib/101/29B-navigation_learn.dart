import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/14-image_Learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator sayesinde  önceden hazırladıımız başka bir sayfaya,bulunduğumuz sayfada
          // atadığımız tuşu tıklayarak  gidebilir ve  gitiğimiz  sayfanın appabarına otomatik atanan  x tuş sayesinde sayfamıza geri dönebiliriz.
          Navigator.of(context).push(MaterialPageRoute(
              builder: (conext) {
                return const ImageLarnView();
              },
              fullscreenDialog: true, //?
              settings: RouteSettings() //?
              ));
        },
        child: Icon(Icons.navigation_rounded),
      ),
    );
  }
}
