import 'package:flutter/material.dart';

class FlexExpandedLearn extends StatelessWidget {
  const FlexExpandedLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.amber,
                          child: Text('A'),
                        )),
                    Expanded(
                        flex: 4,
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.blue,
                          child: Text('B'),
                        )),
                    Expanded(
                        flex: 4,
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.pink,
                          child: Text('C'),
                        )),
                    Expanded(
                        flex: 4,
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.orange,
                          child: Text('D'),
                        )),
                  ],
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    color: Colors.indigo,
                    child: Text('ikinci'),
                  )),
              Expanded(
                flex: 2,
                child: Container(color: Colors.lightGreenAccent),
              )
            ],
          ),
        ));
  }
}
