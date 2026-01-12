//bu ders Service_Learn_View dersimin aynısının  düzenlenmiş ve üzerine eklenmiş hali.

// import 'dart:html';

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/3-service/post_model.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

// dio paketini pubspace.yaml a ekliyoruz.
class _ServicePostLearnState extends State<ServicePostLearn> {
  List<PostModel>? _items;
  bool _isLoading = false;
  late final Dio _dio; // bir tane dio tanımladık
  final baseUrl = 'https://jsonplaceholder.typicode.com/';

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();
  String? name;
  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  //dataları servisten göndermek için
  Future<void> _addItemToService(PostModel postmodel) async {
    _changeLoading();
    final response = await _dio.post('posts', data: postmodel);

    if (response.statusCode == HttpStatus.created) {
      name = 'Başarılı';
      print(name);
    }
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            _isLoading
                ? CircularProgressIndicator.adaptive()
                : SizedBox.shrink()
          ],
        ),
        body: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
                controller: _bodyController,
                decoration: InputDecoration(labelText: 'Body')),
            TextField(
                controller: _userIdController,
                keyboardType: TextInputType.number,
                autofillHints: [AutofillHints.creditCardNumber],
                decoration: InputDecoration(labelText: 'UserId')),
            TextButton(
                onPressed: _isLoading
                    ? null
                    : () {
                        if (_titleController.text.isNotEmpty &&
                            _bodyController.text.isNotEmpty &&
                            _userIdController.text.isNotEmpty) {
                          PostModel model = PostModel(
                            body: _bodyController.text,
                            title: _titleController.text,
                            userId: int.tryParse(_userIdController.text),
                          );
                          _addItemToService(model);
                        }
                      },
                child: Text('Send '))
          ],
        ));
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

//01.13.00 kaldım.
