import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/25-StatefulLifeCycle/widget/number_widget.dart';

class First_Page extends StatefulWidget {
  @override
  State<First_Page> createState() => _First_PageState();
}

class _First_PageState extends State<First_Page> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
          actions: [
            IconButton(
                icon: Icon(Icons.add),
                onPressed: () => setState(() {
                      number += 1;
                    }))
          ],
        ),
        body: NumberWidget(number: number)
        //dispose yöntemini denemek için açın
        // ListView.separated(
        //     itemBuilder: (context, index) {
        //       final number = index + 1;
        //       return NumberWidget(number: number);
        //     },
        //     separatorBuilder: (context, index) => Divider(),
        //     itemCount:
        //         1 //burayı 5 yaparak dispose  çalışma mantığını anlayabiliriz.
        //     )

        );
  }
}
