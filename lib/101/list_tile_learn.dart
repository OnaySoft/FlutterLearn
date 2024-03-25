import 'package:flutter/material.dart';
import 'package:music_box/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const RandomImage(),
              // dense: true, //olabildiğinde küçültüp sığdırıyor
              onTap: () {},
              subtitle: const Center(child: Text('Servis Takip Yazılımı')),
              leading: const Icon(Icons.apple_outlined),
              trailing: const Icon(Icons.chevron_right),
            ),
          )
        ],
      ),
    );
  }
}
