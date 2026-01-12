// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class NumberWidget extends StatefulWidget {
  final int number;
  const NumberWidget({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  State<NumberWidget> createState() {
    print('Number : $number CreateState');
    return _NumberWidgetState();
  }
}

class _NumberWidgetState extends State<NumberWidget> {
  late int number;
  @override
  void initState() {
    super.initState();
    print('Number : ${widget.number} İnitState');
    number = widget.number;
  }

  @override
  void dispose() {
    print('Number : ${widget.number} Disponse');
    super.dispose();
  }

  @override
  //en yuakrıdaki NumberWidget clasının consaksırında(mesea number) istenen veriler değişirse bu metot çalışır.
  void didUpdateWidget(NumberWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Number : ${widget.number} didUpdateWidget');
    if (oldWidget.number != widget.number) {
      print('number has change');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('Number : ${widget.number} Build');
    return Container(
      height: 500,
      child: Center(
          child: TextButton(
        child: Text(number.toString(), style: TextStyle(fontSize: 80)),
        onPressed: () {
          print('Number : ${widget.number} SetState');

          setState(() {
            number += 1;
          });
        },
      )),
    );
  }
}
