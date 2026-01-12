//bu ders Service_Learn_View dersimin aynısının  düzenlenmiş ve üzerine eklenmiş hali.

// import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/3-service/post_model.dart';

class ServiceLearn2 extends StatefulWidget {
  const ServiceLearn2({super.key});

  @override
  State<ServiceLearn2> createState() => _ServiceLearn2State();
}

// dio paketini pubspace.yaml a ekliyoruz.
class _ServiceLearn2State extends State<ServiceLearn2> {
  List<PostModel>? _items;
  bool _isLoading = false;
  late final Dio _dio; // bir tane dio tanımladık
  final baseUrl = 'https://jsonplaceholder.typicode.com/';

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
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
    final response = await _dio.get('posts');

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
          return _PostCard(model: _items?[index]);
        },
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    super.key,
    required PostModel? model,
  }) : _model = model;

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
          title: Text(_model?.title ?? ''), subtitle: Text(_model?.body ?? '')),
    );
  }
}

//54.00 kaldım.