import 'package:flutter/material.dart';

class ScaffolfLearnView extends StatelessWidget {
  const ScaffolfLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold samples'),
      ),
      body: const Text('merhaba'),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.abc_outlined),
            label: 'a',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'a',
          )
        ],
      ),
    );
  }
}
