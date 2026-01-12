import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/3-Service2/post-model.dart';

int indexListTile = 0;

class ServiceLearnn2 extends StatefulWidget {
  const ServiceLearnn2({super.key});

  @override
  State<ServiceLearnn2> createState() => _ServiceLearnnState();
}

class _ServiceLearnnState extends State<ServiceLearnn2> {
  int indexListTile = 0;

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
          return _PostCard(items: _items?[index]);
        },
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  _PostCard({
    super.key,
    required PostModel2? items,
  }) : _items = items;

  final PostModel2? _items;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(
          _items?.title ?? '',
          style: TextStyle(color: Colors.amber),
        ),
        subtitle: Text(_items?.body ?? ''),
      ),
    );
  }
}
