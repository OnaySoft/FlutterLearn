import 'package:flutter/material.dart';
import 'package:music_box/101/color_learn.dart';
import 'package:music_box/101/icon_learn.dart';
import 'package:music_box/101/image_learn.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({super.key});

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.9);
  int _currentPageIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(_currentPageIndex.toString()),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(duration: const Duration(seconds: 1), curve: Curves.slowMiddle);
              },
              child: const Icon(Icons.navigate_before),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: const Duration(seconds: 1), curve: Curves.slowMiddle);
            },
            child: const Icon(Icons.navigate_next),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        children: [
          const ImageLearn(),
          IconLearnView(),
          const ColorLearn(),
        ],
      ),
    );
  }
}
