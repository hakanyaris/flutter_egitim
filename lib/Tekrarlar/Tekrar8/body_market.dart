import 'package:flutter/material.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar8/Markets.dart';
import 'package:flutter_application_1/Tekrarlar/Tekrar8/service.dart';

class BodyWidget extends StatefulWidget {
  final Market market;
  const BodyWidget({required this.market, Key? key}) : super(key: key);

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  List<String> items = [];

  @override
  void initState() {
    print('BodyWidget:İnitState');
    createItems();
    super.initState();
  }

  createItems() async {
    items = [];
    setState(() {});
    items = await marketItems(widget.market);
    setState(() {});
  }

  Widget build(BuildContext context) {
    print("BodyWidget:build");
    return Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(widget.market.title),
              ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
