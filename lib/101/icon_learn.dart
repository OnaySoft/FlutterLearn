import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});

  final IconColors iconColor = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Icon Learn'),
      ),
      body: Column(
        children: [
          Icon(
            Icons.access_alarm_outlined,
            color: iconColor.crimex,
            size: IconSizes()._smallIcon,
          )
        ],
      ),
    );
  }
}

class IconSizes {
  final double _smallIcon = 80;
}

class IconColors {
  final Color crimex = const Color.fromARGB(255, 233, 237, 9);
}
