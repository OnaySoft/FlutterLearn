import 'package:flutter/material.dart';

class ColrosDemos extends StatefulWidget {
  const ColrosDemos({super.key, required this.initialColor});
  final Color? initialColor;
  @override
  State<ColrosDemos> createState() => _ColrosDemosState();
}

class _ColrosDemosState extends State<ColrosDemos> {
  Color? _backgroundColor;
  @override
  void initState() {
    //ekran draw edilmeden çalışan bir kod.
    // TODO: implement initState
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _colorOnTab,
        items: const [
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red), label: "Red"),
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue), label: "Blue"),
          BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: "Yellow"),
        ],
      ),
    );
  }

  void _colorOnTab(int value) {
    if (value == _MyColors.Red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.Blue.index) {
      changeBackgroundColor(Colors.blue);
    } else if (value == _MyColors.Yellow.index) {
      changeBackgroundColor(Colors.yellow);
    }
  }
}

enum _MyColors { Red, Blue, Yellow }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    required this.color,
  });
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
