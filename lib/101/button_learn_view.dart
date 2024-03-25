import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            child: const Text('aaaa'),
            onPressed: () {},
          ),
          ElevatedButton(onPressed: () {}, child: const Text('bbbb')),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.accessible_forward_rounded)),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber[400],
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)))),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 20, bottom: 20, right: 30, left: 30),
                child: Text(
                  'data',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ))
        ],
      ),
    );
  }
}
