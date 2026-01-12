import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/31-Tekrar6.dart';
import 'package:flutter_application_1/demos/4-my_collection_demos_(listviewbuilder).dart';

class Tekrar9 extends StatefulWidget {
  const Tekrar9({super.key});

  @override
  State<Tekrar9> createState() => _Tekrar9State();
}

class _Tekrar9State extends State<Tekrar9> {
  late final List<CollectionModel> _items;
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 246, 246),
      body: Padding(
        padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
        child: Column(children: [
          AppBarWidget(),
          TitleTextField(),
          CategoriesWidget(),
          ListViewCardWidget(
            items: _items,
          )
        ]),
      ),
    );
  }
}

//---------------------------------
class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          Icon(
            Icons.approval_rounded,
            size: 35,
            color: Colors.black54,
          ),
          _TextProject().blakLabelLarge('Topçular Mah. Belde Sok.', context),
        ]),
        SizedBox(
          width: 55,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow,
              ),
              child: Icon(
                Icons.add_alert_sharp,
              )),
        )
      ],
    );
  }
}

//-------------------------------------------

class TitleTextField extends StatelessWidget {
  const TitleTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _PaddingProject().PaddingVertical8 + EdgeInsets.only(left: 5),
      child: Column(children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Column(children: [
              _TextProject().blackHeadlineMedium('Hi Shakil!', context),
              _TextProject().blakLabelLarge('Find your favorite dish', context),
            ])),
        Row(children: [
          Expanded(
              flex: 8,
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(vertical: 4)),
              )),
          Spacer(
            flex: 1,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: SizedBox(
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: () {},
                  child: Icon(
                    Icons.display_settings_outlined,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          )
        ]),
      ]),
    );
  }
}

//------------------------------------------------

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _TextProject().blackTitleLarge('Categories', context),
            _TextProject().blakLabelLarge('See All', context)
          ],
        ),
        Padding(
          padding: _PaddingProject().PaddingVertical8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _CardStackImage(
                  textImage: 'images/mutfak/pizza.jpg',
                  textMenu: 'Pizza',
                  right: 27),
              _CardStackImage(
                textImage: 'images/mutfak/corba3.jpg',
                textMenu: 'Çorba',
                right: 25,
              ),
              _CardStackImage(
                  textImage: 'images/mutfak/hamburger.jpg',
                  textMenu: 'Hamburger',
                  right: 7),
              _CardStackImage(
                  textImage: 'images/mutfak/makarna.jpg',
                  textMenu: 'Makarna',
                  right: 13),
            ],
          ),
        )
      ],
    );
  }
}

class _CardStackImage extends StatelessWidget {
  const _CardStackImage({
    super.key,
    required this.textImage,
    required this.textMenu,
    required this.right,
  });
  final String textImage;
  final String textMenu;
  final double right;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(children: [
        Container(
          color: Color.fromARGB(255, 248, 246, 246),
          height: 80,
          width: 85,
        ),
        SizedBox(
            height: 70,
            width: 70,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Image.asset(textImage),
            )),
        Positioned(
            right: right,
            bottom: 0,
            child: _TextProject().blackBodyMedium(textMenu, context)),
      ]),
    );
  }
}

//-------------------------------------------

class ListViewCardWidget extends StatelessWidget {
  ListViewCardWidget({super.key, required List<CollectionModel> items})
      : _items = items;

  late final List<CollectionModel> _items;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _TextProject().blackTitleLarge('Resaturandsnearby', context),
            _TextProject().blakLabelLarge('See all', context)
          ],
        ),
        SizedBox(
          height: 380,
          child: ListView.builder(
            shrinkWrap: true, //  kullanmasak da olur
            itemCount: _items.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: Row(children: [
                  SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        _items[index].images,
                        fit: BoxFit.fill,
                      )),

                  SizedBox(
                    width: 250,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _TextProject()
                                .blackTitleLarge(_items[index].title, context),
                            _TextProject().blackTitleLarge(
                                ' ${_items[index].discount.toString()}% OFF ',
                                context)
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_border),
                                _TextProject().blackTitleLarge(
                                    _items[index].point.toString(), context),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Row(
                                children: [
                                  Icon(Icons.bike_scooter_outlined),
                                  _TextProject().blackTitleLarge(
                                      '${_items[index].minutes.toString()}M',
                                      context),
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                 
                ]),
              );
            },
          ),
        )
      ],
    );
  }
}

//Proje Araçları--------------------------------------

class _TextProject {
  Text blackHeadlineMedium(String text1, BuildContext context) {
    return Text(text1,
        style: Theme.of(context)
            .textTheme
            .headlineMedium
            ?.copyWith(color: Colors.black));
  }

  Text blackBodyMedium(String text1, BuildContext context) {
    return Text(text1,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.black));
  }

  Text blakLabelLarge(String text1, BuildContext context) {
    return Text(text1,
        style: Theme.of(context)
            .textTheme
            .labelLarge
            ?.copyWith(color: Colors.black38));
  }

  Text blackTitleLarge(String text1, BuildContext context) {
    return Text(text1,
        style: Theme.of(context)
            .textTheme
            .titleLarge
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w600));
  }
}

//------------------------------------

class _PaddingProject {
  final PaddingVertical8 = EdgeInsets.symmetric(vertical: 8);
}

class CollectionModel {
  final String images;
  final String title;
  final double point;
  final int minutes;
  final int discount;

  CollectionModel(
      {required this.images,
      required this.title,
      required this.point,
      required this.minutes,
      required this.discount});
}

class CollectionItems {
  late List<CollectionModel> items;
  CollectionItems() {
    items = [
      CollectionModel(
          images: ImagesProject.pizza,
          minutes: 30,
          discount: 15,
          point: 4.5,
          title: 'Pizza'),
      CollectionModel(
          images: ImagesProject.makarna,
          minutes: 30,
          discount: 15,
          point: 4.5,
          title: 'Makarna'),
      CollectionModel(
          images: ImagesProject.corba,
          minutes: 25,
          discount: 15,
          point: 4.5,
          title: 'Çorba'),
      CollectionModel(
          images: ImagesProject.hamburger,
          minutes: 15,
          discount: 15,
          point: 4.5,
          title: 'Hamburger'),
      CollectionModel(
          images: 'images/mutfak/pizza.jpg',
          minutes: 30,
          discount: 15,
          point: 4.5,
          title: 'Pizza'),
    ];
  }
}

class ImagesProject {
  static final String pizza = 'images/mutfak/pizza.jpg';
  static final String hamburger = 'images/mutfak/hamburger.jpg';
  static final String corba = 'images/mutfak/corba3.jpg';

  static final String makarna = 'images/mutfak/makarna.jpg';
}
