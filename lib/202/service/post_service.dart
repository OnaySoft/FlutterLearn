import 'dart:io';

import 'package:dio/dio.dart';

import 'post_model.dart';

class PostService {
  final Dio _dio;
  PostService() : _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  Future<bool> addItemtoService(PostModel model) async {
    final response = await _dio.post(_PostServicesPath.posts.name, data: model);
    return response.statusCode == HttpStatus.created;
  }

  //posts/1
  Future<bool> putItemtoService(PostModel model, int id) async {
    final response = await _dio.put('${_PostServicesPath.posts.name}/$id', data: model);
    return response.statusCode == HttpStatus.ok;
  }

  Future<bool> deleteItemtoService(int id) async {
    final response = await _dio.put('${_PostServicesPath.posts.name}/$id');
    return response.statusCode == HttpStatus.ok;
  }

  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    final response = await _dio.get('posts');
    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;

      //datayı okuyabilmek için Liste kontrolü yapmalıyız. Bu sayede list gibi okuyoruz.
      //List kontrolünden sonra listin bütün metodlarını kullanabiliyoruz

      if (datas is List) {
        return datas.map((e) => PostModel.fromJson(e)).toList();
      }
    }
    return null;
  }
}

enum _PostServicesPath { posts, comments } //pathları yazıyoruz. yukarıda dio içinde çağırıyoruz
