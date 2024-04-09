// ignore_for_file: public_member_api_docs, sort_constructors_first
class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;
  PostModel2(this.userId, this.id, this.body, this.title);
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userId, this.id, this.title, this.body);
}

class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel4({required this.userId, required this.id, required this.title, required this.body});
}

//En güzeli 5. numara müşteriden datayı alıyorum eşitlemeyi kendim yapıyorum
class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel5({
    required userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}
//değişkenlere late atarsan constructor zamanında değer atatabilirsin. değerleri sonradan gelecek diyoruz

class PostModel6 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6({
    required userId,
    required int id,
    required String title,
    required String body,
  }) {
    int userId;
    int id;
    String title;
    String body;
  }
}

//default değer atıyoruz
class PostModel7 {
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel7({
    userId = 0,
    int id = 0,
    String title = '',
    String body = '',
  }) {
    int userId;
    int id;
    String title;
    String body;
  }
}

//web servis için en pratik kullanım.
class PostModel8 {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel8({this.userId, this.id, this.title, this.body});
//copywith ile nesnenin bazı özellikleri aynı kalarak yenisini oluşturmamıza olanak sağlıyor.
  PostModel8 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModel8(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
}
