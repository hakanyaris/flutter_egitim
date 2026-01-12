import 'package:flutter/material.dart';

class TextField_Learn extends StatefulWidget {
  const TextField_Learn({super.key});

  @override
  State<TextField_Learn> createState() => _TextField_LearnState();
}

class _TextField_LearnState extends State<TextField_Learn> {
  @override
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextField(
          style: TextStyle(color: Colors.amber),
          focusNode: focusNode1,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.emailAddress,
          autofillHints: [AutofillHints.email],
          maxLines: 4,
          maxLength: 2,
        ),
        TextField(
          focusNode: focusNode2,
        )
      ]),
    );
  }
}
