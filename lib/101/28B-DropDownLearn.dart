import 'package:flutter/material.dart';

class DropDownLearn extends StatefulWidget {
  @override
  State<DropDownLearn> createState() => _DropDownLearnState();
}

class _DropDownLearnState extends State<DropDownLearn> {

   String kulSecimi = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Text('Meyveler'),
        ),
        body: Column(
          children: [
            biriciDers(),
            Text(kulSecimi),
          ],
        ));
  }

  DropdownButton biriciDers() => DropdownButton(items: [
        DropdownMenuItem(
          child: Text('Elma'),
          value: 'Elma',
        ),
        DropdownMenuItem(
          child: Text('Armut'),
          value: 'Armut',
        ),
        DropdownMenuItem(
          child: Text('Muz'),
          value: 'Üzüm',
        )
      ], onChanged: (value) => { kulSecimi=value
        
      }
      );
}
