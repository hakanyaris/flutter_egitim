// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Tekrar6 extends StatefulWidget {
  Tekrar6({super.key});

  @override
  State<Tekrar6> createState() => _Tekrar6State();
}

class _Tekrar6State extends State<Tekrar6> with DecorationProject {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorProject().white,
        body: Column(
          children: [
            Stack(children: [
              Container(
                height: 300,
                color: ColorProject().purple,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Center(
                      child: SizedBox(
                          height: 100,
                          width: 200,
                          child:
                              Image.asset('images/childiren_window.com.png')),
                    ),
                    Text(
                      'Merhaba',
                      style: Theme.of(context).textTheme.displayMedium,
                    )
                  ],
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 20),
                    //-------------------------------
                    child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        style: TextStyle(color: ColorProject().black38),
                        decoration:
                            decorationBorderCircle(textProject().email)),
                  ),

                  //---------------------

                  TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: ColorProject().black),
                      decoration: decorationBorderCircle(textProject().parola)),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, bottom: 20),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'ÜYE OL',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 130),
                            backgroundColor: ColorProject().purple,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)))),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'KAYIT OL',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            color: ColorProject().purple,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            )
          ],
        ));
  }
}

mixin DecorationProject {
  InputDecoration decorationBorderCircle(String text) {
    return InputDecoration(
        hintStyle: TextStyle(color: ColorProject().black),
        hintText: text,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(color: ColorProject().black, width: 2.0)),
        fillColor: ColorProject().white,
        filled: true);
  }
}

class textProject {
  final String parola = 'Parola';
  final String email = 'E-mail';
}

class ColorProject {
  final Color purple = Colors.purple;
  final Color black = Colors.black;
  final Color black38 = Colors.black38;
  final Color white = Colors.white;
}
