import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar8/Markets.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar8/body_market.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Market market = Market.values.first;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('İndirimdekiler'),
              Divider(),
              Expanded(child: BodyWidget(market: Market.blueMarket))
            ],
          ),
        ),
      )),
    );
  }
}
