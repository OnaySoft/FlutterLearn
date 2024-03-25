import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: PngImager(path: ImagesItems().apple),
          ),
        ],
      ),
    );
  }
}

class ImagesItems {
  final String apple = "book_2757205";
}

class PngImager extends StatelessWidget {
  const PngImager({super.key, required this.path});
  final String path;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$path.png',
      fit: BoxFit.fill,
    );
  }
}
