import 'package:flutter/material.dart';
import 'package:flutter_application_1/demos(my)/2-Notped/Ekranlar/GirisEkranlar%C4%B1/GirisEkrani.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
 
  

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(home: GirisEkrani());
  }
}
