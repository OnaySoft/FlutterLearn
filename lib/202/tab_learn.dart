import 'package:flutter/material.dart';
import 'package:music_box/101/icon_learn.dart';
import 'package:music_box/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
          extendBody: true,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              tabController.animateTo(_MyTabViews.home.index);
            },
          ),
          bottomNavigationBar: BottomAppBar(
            notchMargin: 10,
            shape: const CircularNotchedRectangle(),
            // altta
            child: TabBar(
              controller: tabController,
              tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList(),
            ),
          ),
          appBar: AppBar(
              /* bottom: const TabBar(
              //üstte
              tabs: [
                Tab(text: 'Sayfa1'),
                Tab(text: 'Sayfa2'),
              ],
            ),*/
              ),
          body: TabBarView(
            controller: tabController,
            children: [
              Container(
                color: Colors.red,
              ),
              const ImageLearn(),
              IconLearnView(),
              const ImageLearn(),
            ],
          ),
        ));
  }
}

enum _MyTabViews { home, settings, profile, more }

extension _MyTabViewExtensions on _MyTabViews {}
