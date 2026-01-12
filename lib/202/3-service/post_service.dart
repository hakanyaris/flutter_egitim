//import 'dart:html';

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_1/202/3-service/comment_model.dart';
import 'package:flutter_application_1/202/3-service/post_model.dart';

// interface kısmını en sonra ekliyoruz ilk önce aşaıdakileri inceleryin
// interface sayesinde test edilebilir kod yazabiliriz.
abstract class IPostService {
  Future<bool> addItemToService(PostModel postmodel);
  Future<bool> putItemToService(PostModel postmodel, int id);
  Future<bool> deleteItemToService(PostModel postmodel, int id);
  Future<List<PostModel>?> fetchPostItems();
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId);
}

class PostService implements IPostService {
  final Dio _dio;

  PostService() //consakcır ile ilgisi derse bak
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

// yeni  eleman ekleme liseye
  @override
  Future<bool> addItemToService(PostModel postmodel) async {
    try {
      final response =
          await _dio.post(_PostServicePaths.posts.name, data: postmodel);

      return response.statusCode == 201;
    } on DioException catch (error) {
      //bu durumu static bir sınıfta yazıp daha kullanışlı hale getirmek için  fetchPostItems() aşağıda içine bak
      // if (kDebugMode) {
      //   print(error.message);
      // }
      _ShowDebug.showDioError(error, this);
    }
    return false;
  }

  //put listedeli elemanı güncelleme update
  @override
  Future<bool> putItemToService(PostModel postmodel, int id) async {
    try {
      final response = await _dio.put(
          _PostServicePaths.posts.name +
              '/$id', // '${_PostServicePaths.posts}/$id}' şeklinde de yazabiliriz. -
          data: postmodel);

      return response.statusCode == 200;
    } on DioException catch (error) {
      //bu durumu static bir sınıfta yazıp daha kullanışlı hale getirmek için  fetchPostItems() aşağıda içine bak
      if (kDebugMode) {
        print(error.message);
      }
    }
    return false;
  }

  @override
  Future<bool> deleteItemToService(PostModel postmodel, int id) async {
    try {
      final response = await _dio.delete(
        _PostServicePaths.posts.name +
            '/$id', // '${_PostServicePaths.posts}/$id}' şeklinde de yazabiliriz. -
      );

      return response.statusCode == 200;
    } on DioException catch (error) {
      //bu durumu static bir sınıfta yazıp daha kullanışlı hale getirmek için  fetchPostItems() aşağıda içine bak
      // if (kDebugMode) {
      //   print(error.message);
      // }
      _ShowDebug.showDioError(error, this);
    }
    return false;
  }

//----------------------------------------------------

//listeyi çekip ekrande göstermeye yararyan metot
  @override
  Future<List<PostModel>?> fetchPostItems() async {
    try {
      final response = await _dio.get(_PostServicePaths.posts.name);

      print(response);

      //200 yerine HttpStatus.ok yazılacaktı fakat hata verdiği için 200 yazdım
      if (response.statusCode == 200) {
        final _datas = response.data;

        //_datas is List yapınca _datas listeye ait tüm metotları kullanabiliriz.
        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } on DioException catch (exception) {
      _ShowDebug.showDioError(
          exception, this); //aşağuıda tanımlanmış bir satatic metot
    }
    return null;
  }

  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId) async {
    try {
      final response = await _dio.get(_PostServicePaths.comments.name,
          queryParameters: {_PostQueryPaths.postId.name: postId});

      print(response);

      //200 yerine HttpStatus.ok yazılacaktı fakat hata verdiği için 200 yazdım
      if (response.statusCode == 200) {
        final _datas = response.data;

        //_datas is List yapınca _datas listeye ait tüm metotları kullanabiliriz.
        if (_datas is List) {
          return _datas.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    } on DioException catch (exception) {
      _ShowDebug.showDioError(
          exception, this); //aşağuıda tanımlanmış bir satatic metot
    }
    return null;
  }
}

enum _PostServicePaths { posts, comments }

enum _PostQueryPaths { postId }

class _ShowDebug {
  static void showDioError<T>(DioException error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
      print('----------------');
    }
  }
}

// 01.34.20 kaldım