import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Column(
        children: [
          Card(
            shape: CircleBorder(),
            margin: EdgeInsets.all(10),
            color: Colors.amberAccent,
            child: SizedBox(
              height: 200,
              width: 300,
            ),
          ),
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text('Veli'),
              ),
            ),
          ),
          _CustomCard(
            child: SizedBox(
              height: 100,
              width: 300,
              child: Center(
                child: Text('Veli'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProjectMargin {
  static const CardMargin = EdgeInsets.all(10);
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 216, 27, 96),
      child: child,
    );
  }
}
