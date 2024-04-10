import 'package:flutter/material.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ImagePath.book_2757205.toWidget(),
    );
  }
}

enum ImagePath { book_2757205 }

//path yapıyor
extension ImagePathExtension on ImagePath {
  String path() {
    return 'assets/images/$name.png';
  }

//direkt widget oluşturuyor.
  Widget toWidget() {
    return Image.asset(path());
  }
}
