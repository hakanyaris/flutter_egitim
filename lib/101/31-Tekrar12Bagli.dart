import 'package:flutter/material.dart';

class Tekrar12Bagli extends StatefulWidget {
   Tekrar12Bagli({super.key,});


  @override
  State<Tekrar12Bagli> createState() => _Tekrar12BagliState();
}

class _Tekrar12BagliState extends State<Tekrar12Bagli> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(child: Image.asset('images/mutfak/pizza.jpg')),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text('Sepete Ekle',
                    style: Theme.of(context).textTheme.displaySmall)),
          )
        ],
      ),
    );
  }
}
