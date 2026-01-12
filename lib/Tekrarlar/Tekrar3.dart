import 'package:flutter/material.dart';

class ImageLearn2 extends StatelessWidget {
  ImageLearn2({super.key});
  bool secim = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset('images/alien-153542_640.png',
                    fit: BoxFit.fill),
              ),
            ),
            Card(
              child: Image.network(
                'https://freenaturestock.com/wp-content/uploads/freenaturestock-2203-1024x683.jpg',
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.abc);
                },
              ),
            ),
            _cardWidget(imageAddress: ImagesAddress.adress1),
            ListTile(
              title: Text('Hakan', style: TextStyle(color: Colors.black)),
              leading: Icon(Icons.account_box_rounded, color: Colors.black),
              trailing: Icon(Icons.account_tree_rounded, color: Colors.black),
              onTap: () => {print('Listeye kıs basıldı'), secim == true},
              onLongPress: () => {print('Listeye uzun basıldı'), secim == true},
              dense: true,
              contentPadding: EdgeInsets.symmetric(horizontal: 30),
              tileColor: Colors.yellow,
              selected: secim,
              selectedTileColor: Colors.blue,
              selectedColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class _cardWidget extends StatelessWidget {
  _cardWidget({super.key, required this.imageAddress});
  String imageAddress;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Image.network(imageAddress,
            fit: BoxFit.fill,
            errorBuilder: (context, error, StackTrace) => Text('No Filed')),
      ),
    );
  }
}

class ImagesAddress {
  static String adress1 =
      'https://freenaturestock.com/wp-content/uploads/freenaturestock-2056-1024x498.jpg';
}
