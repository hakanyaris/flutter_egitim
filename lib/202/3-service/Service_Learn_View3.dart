//bu ders Service_Learn_View2 dersinin  post_service.dart katmanı eklendikleten sonra  fetchPostItems()
// metodunun dışarıdan(post_service.dart içinden) buraya bağlandığı  oluşumdur.eklenen kısımlara eklendi yazıyor

//import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/3-service/comment_learn_view.dart';
import 'package:flutter_application_1/202/3-service/post_model.dart';
import 'package:flutter_application_1/202/3-service/post_service.dart';

class ServiceLearn3 extends StatefulWidget {
  const ServiceLearn3({super.key});

  @override
  State<ServiceLearn3> createState() => _ServiceLearn3State();
}

// dio paketini pubspace.yaml a ekliyoruz.
class _ServiceLearn3State extends State<ServiceLearn3> {
  List<PostModel>? _items;
  bool _isLoading = false;
  late final Dio _dio; // bir tane dio tanımladık
  final baseUrl = 'https://jsonplaceholder.typicode.com/';

  //TEST EDİLEBİLİR KOD
  late final IPostService _postService;
  //interface kullanımından sonra aşağıdaki kodu iptal ettik
  //late final PostService _postService; //eklendi

  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
    _postService = PostService(); //eklendi
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
    _items = await _postService.fetchPostItems(); //eklendi

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
      body: _items == null
          ? Placeholder()
          : ListView.builder(
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
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => CommentLearnView(postId: _model?.id),
            ));
          },
          title: Text(_model?.title ?? ''),
          subtitle: Text(_model?.body ?? '')),
    );
  }
}

//01.27.30 kaldım  