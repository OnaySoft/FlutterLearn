import 'dart:io';
import 'package:dio/dio.dart';
import 'package:music_box/202/service/comment_model.dart';
import 'post_model.dart';

//Interface oluşturuyoruz
abstract class IPostService {
  Future<bool> addItemtoService(PostModel model);
  Future<bool> putItemtoService(PostModel model, int id);
  Future<bool> deleteItemtoService(int id);
  Future<List<PostModel>?> fetchPostItemsAdvance();
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId);
}

//yukarıdaki Interface 'i burada implament ediyoruz.
class PostService implements IPostService {
  final Dio _dio;
  PostService() : _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<bool> addItemtoService(PostModel model) async {
    final response = await _dio.post(_PostServicesPath.posts.name, data: model);
    return response.statusCode == HttpStatus.created;
  }

  //posts/1
  @override
  Future<bool> putItemtoService(PostModel model, int id) async {
    final response = await _dio.put('${_PostServicesPath.posts.name}/$id', data: model);
    return response.statusCode == HttpStatus.ok;
  }

  @override
  Future<bool> deleteItemtoService(int id) async {
    final response = await _dio.put('${_PostServicesPath.posts.name}/$id');
    return response.statusCode == HttpStatus.ok;
  }

  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    final response = await _dio.get(_PostServicesPath.posts.name);
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

  //Query parameter olan örnek. /comments?postId=15
  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId) async {
    final response = await _dio.get(_PostServicesPath.comments.name, queryParameters: {
      _PostQueryPath.postId.name: postId,
    });
    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;
      //datayı okuyabilmek için Liste kontrolü yapmalıyız. Bu sayede list gibi okuyoruz.
      //List kontrolünden sonra listin bütün metodlarını kullanabiliyoruz
      if (datas is List) {
        return datas.map((e) => CommentModel.fromJson(e)).toList();
      }
    }
    return null;
  }
}

enum _PostServicesPath { posts, comments } //pathları yazıyoruz. yukarıda dio içinde çağırıyoruz

enum _PostQueryPath { postId } //pathları yazıyoruz. yukarıda dio içinde çağırıyoruz
