import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({super.key});
  final ImageUrl = 'https://picsum.photos/200/300';
  @override
  Widget build(BuildContext context) {
    return Image.network(
      ImageUrl,
      height: 100,
    );
  }
}
