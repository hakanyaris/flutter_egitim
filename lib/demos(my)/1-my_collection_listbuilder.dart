import 'package:flutter/material.dart';
import 'package:flutter_application_1/demos/4-my_collection_demos_(listviewbuilder).dart';

class MyCollectionListBilder extends StatefulWidget {
  const MyCollectionListBilder({super.key});

  @override
  State<MyCollectionListBilder> createState() => _MyCollectionListBilderState();
}

class _MyCollectionListBilderState extends State<MyCollectionListBilder> {
  late final List<PersonModel> _items;
  @override
  void initState() {
    super.initState();
    _items = PersonItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 5),
          itemBuilder: (context, index) {
            return _CatagoryCard(
              items: _items,
              index: index,
            );
          },
          itemCount: _items.length),
    );
  }
}

class _CatagoryCard extends StatelessWidget {
  const _CatagoryCard(
      {super.key, required List<PersonModel> items, required int index})
      : _items = items,
        _index = index;

  final List<PersonModel> _items;
  final int _index;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        Padding(
          padding: ProjectPadding().paddingSymetric,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(_items[_index].name),
              Padding(
                padding: ProjectPadding().paddingAll,
                child: Text(_items[_index].surName),
              )
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: ProjectPadding().paddingOnly,
              child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Image.asset(_items[_index].image)),
            ),
            Text(_items[_index].tc.toString())
          ],
        )
      ],
    ));
  }
}

class PersonModel {
  final String name;
  final String surName;
  final int tc;
  final String image;
  final String konum;

  PersonModel(
      {required this.konum,
      required this.name,
      required this.surName,
      required this.tc,
      required this.image});
}

class PersonItems {
  late final List<PersonModel> items;
  PersonItems() {
    items = [
      PersonModel(
          konum: 'konum',
          name: 'HAKAN',
          surName: 'YARIŞ',
          tc: 679472378314,
          image: ProjectImages().collectionImage),
      PersonModel(
          konum: 'konum2',
          name: 'HAKAN2',
          surName: 'YARIŞ2',
          tc: 679472378315,
          image: ProjectImages().collectionImage),
      PersonModel(
          konum: 'konum3',
          name: 'HAKAN3',
          surName: 'YARIŞ3',
          tc: 679472378316,
          image: ProjectImages().collectionImage),
      PersonModel(
          konum: 'konum4',
          name: 'HAKAN4',
          surName: 'YARIŞ4',
          tc: 679472378317,
          image: ProjectImages().collectionImage),
      PersonModel(
          konum: 'konum5',
          name: 'HAKAN4',
          surName: 'YARIŞ5',
          tc: 679472378318,
          image: ProjectImages().collectionImage)
    ];
  }
}

class ProjectImages {
  final String collectionImage = 'images/alien-153542_640.png';
}

class ProjectPadding {
  final paddingSymetric = EdgeInsets.symmetric(horizontal: 8.0);
  final paddingAll = EdgeInsets.all(8.0);
  final paddingOnly = EdgeInsets.only(bottom: 10);
}
