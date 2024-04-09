import 'package:flutter/material.dart';
import 'package:music_box/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  PostModel8 user9 = PostModel8(body: 'Comolokko'); // final dersen click olayında değiştiremezsin.
  //bu yüzden ya varable (var) yada sıfının adını kullanmalısın.
  @override
  void initState() {
    super.initState();

    final user1 = PostModel1()
      ..userId = 1
      ..id = 2
      ..body = 'Body string';
    user1.title = 'title';

    final user2 = PostModel2(1, 2, 'A', 'B');
    user2.body = 'A';

    final user3 = PostModel3(1, 2, 'A', 'B');
    //user3.body = 'A'; hata veriyor. çünkü değişkenler final olarak belirlendi.

    final user4 = PostModel4(userId: 1, id: 3, title: 'B', body: 'C');
    //user4.body = 'a'; hata veriyor. çünkü değişkenler final olarak belirlendi.

    final user5 = PostModel5(userId: 1, id: 4, title: 'a', body: 'v');
    // user5. dediğinde properties lere erişemiyor. private olarak tanımlandığı için.

    final user6 = PostModel6(userId: 2, id: 2, title: 'a', body: 'W');
    // user5. dediğinde properties lere erişemiyor. private olarak tanımlandığı için. (safe)

    final user7 = PostModel7(); //Boş verebiliyoruz;

    final user8 = PostModel8(body: 'Comolokko'); // En pratik kullanım.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'pressed'); //aşağıdakine göre farkı
            //body deki comolokko da korunuyor. yani nesnenin fark kopyası oluşturuluyor
            //PostModel8(body: 'pressed');
          });
        },
      ),
      appBar: AppBar(),
      body: Text(user9.body ?? 'Not has any data'), //direkt atama yapamıyorum nullable olduğu için kontrol etmeliyim.
    );
  }
}
