// import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/3-service/post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

// dio paketini pubspace.yaml a ekliyoruz.
class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    fetchPostItems();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  //dataları servisten çekmek için
  Future<void> fetchPostItems() async {
    _changeLoading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');

    print(response);

    //200 yerine HttpStatus.ok yazılacaktı fakat hata verdiği için 200 yazdım
    if (response.statusCode == 200) {
      final _datas = response.data;

      //_datas is List yapınca _datas listeye ait tüm metotları kullanabiliriz.
      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading ? CircularProgressIndicator.adaptive() : SizedBox.shrink()
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: _items?.length ??
            0, // list null olabileceği için _items de null olabilir yapıyoruz
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 20),
            child: ListTile(
                title: Text(_items?[index].title ?? ''),
                subtitle: Text(_items?[index].body ?? '')),
          );
        },
      ),
    );
  }
}
