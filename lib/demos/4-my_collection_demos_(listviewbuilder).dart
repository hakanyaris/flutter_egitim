

import 'package:flutter/material.dart';

class MyColletionDemos extends StatefulWidget {
  const MyColletionDemos({super.key});

  @override
  State<MyColletionDemos> createState() => _MyColletionDemosState();
}

class _MyColletionDemosState extends State<MyColletionDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: PaddingUtility().paddingSymetric,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 210,
            child: _CatagoryCard(
                model: _items[
                    index]), //extract widget ile çıkardık aşağıya ama consakcırı değiştirdik.
          );
        },
        itemCount: _items.length,
      ),
    );
  }
}

class _CatagoryCard extends StatelessWidget {
  _CatagoryCard({super.key, required CollectionModel model}) : _model = model;

  //required List<CollectionModel> items, extract metot olarak aldığımız  bu kod hata verdi bunun yerine aşağıdaki kod:
  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingTop,
      child: Column(children: [
        Image.asset(
          _model.imagePath,
          fit: BoxFit.fill,
        ),
        Padding(
          padding: PaddingUtility().paddingOnly,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text(_model.title), Text('${_model.price} eth')]),
        )
      ]),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;
//yukarıdaki items  listesine consakcırıda değer atadık ve onu da yukarıda inistate de _items listesine eşitledik
  CollectionItems() {
    items = [
      CollectionModel(
          imagePath: ProjectImages.collectionImages,
          title: 'Abstract Art',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImages.collectionImages,
          title: 'Abstract Art2',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImages.collectionImages,
          title: 'Abstract Art3',
          price: 3.4),
      CollectionModel(
          imagePath: ProjectImages.collectionImages,
          title: 'Abstract Art4',
          price: 3.4),
    ];
  }
}

class PaddingUtility {
  final paddingOnly = EdgeInsets.only(left: 20, top: 20, right: 20);
  final paddingTop = EdgeInsets.only(top: 20);
  final paddingSymetric = EdgeInsets.symmetric(horizontal: 20);
}

class ProjectImages {
  static const collectionImages = 'images/icon_collection_image.png';
}
