import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/3-Service2/post-model.dart';

class ServiceLearnn extends StatefulWidget {
  const ServiceLearnn({super.key});

  @override
  State<ServiceLearnn> createState() => _ServiceLearnnState();
}

class _ServiceLearnnState extends State<ServiceLearnn> {
  //5a-
  List<PostModel2>? _items;
  //6a-
  bool isLoading = false;
  @override
  void initState() {
    super.initState();

    fetchPostItems();
  }

//6b_
  void changeloading() {
    setState(() {
      isLoading = !isLoading;
    });
  }

//5b-
  void fetchPostItems() async {
    //6c-
    changeloading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');

    // print(response);

    if (response.statusCode == HttpStatus.ok) {
      final _dates = response.data;
      //_dates is list demesek Liste ait metodları kullanamayız.
      if (_dates is List) {
        setState(() {
          //_dates listesinin her bir elemanı :
          //          {
          //   "userId": 1,
          //   "id": 1,
          //   "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
          //   "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
          // },
          //Listenin her bir elemanını alıp PostModel2.fromJson(Map<String, dynamic> json) metodunu uygular.
          //yani listedeki her bir elemanın içindeki map<Sting,dynamic>   anahtarlarını alır değerlere atar.Map yerine o değeri koyar
          _items = _dates.map((e) => PostModel2.fromJson(e)).toList();
        });
      }
    }
    //6c-
    changeloading();
  }

  @override
  Widget build(BuildContext context) {
    //4-
    return Scaffold(
      appBar: AppBar(
          actions: [isLoading ? CircularProgressIndicator() : SizedBox()]),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          //7-
          return Card(
            margin: EdgeInsets.only(bottom: 20),
            child: ListTile(
              title: Text(
                _items?[index].title ?? '',
                style: TextStyle(color: Colors.amber),
              ),
              subtitle: Text(_items?[index].body ?? ''),
            ),
          );
        },
      ),
    );
  }
}
