import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              color: Colors.blue,
              height: 100,
              //width: 200,
            ),
          ),
          Padding(
            padding: PagePadding().pagePaddingVertical,
            child: Container(
              color: Colors.white,
              height: 100,
              width: 200,
            ),
          )
        ],
      ),
    );
  }
}

class PagePadding {
  final pagePaddingVertical = const EdgeInsets.symmetric(vertical: 150);
}
