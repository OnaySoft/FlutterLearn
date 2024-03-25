import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            'test',
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: ColorItems.sc),
          )
        ],
      ),
    );
  }
}

class ColorItems {
  static const Color sc = Color.fromRGBO(198, 237, 74, 1);
}
