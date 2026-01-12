import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/13-card_learn.dart';
import 'package:flutter_application_1/101/8-icon_learn_view.dart';

import '../101/14-image_Learn.dart';

class TekrarB1 extends StatefulWidget {
  const TekrarB1({super.key});

  @override
  State<TekrarB1> createState() => _TekrarB1State();
}

class _TekrarB1State extends State<TekrarB1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
              bottom: TabBar(tabs: [
            Tab(child: Icon(Icons.ac_unit_sharp)),
            Tab(
              child: Icon(Icons.air_sharp),
            ),
            Tab(
              child: Icon(Icons.cloud_queue),
            )
          ])),
          body: TabBarView(
              children: [iconLearnView(), ImageLarnView(), CardLearnView()]),
        ));
  }
}
