import 'package:flutter/material.dart';
import 'package:music_box/101/list_view_builder.dart';
import 'package:music_box/101/list_view_learn.dart';
import 'package:music_box/101/navigation_learn.dart';
import 'package:music_box/202/model_learn.dart';
import 'package:music_box/202/model_learn_view.dart';
import 'package:music_box/202/service/service_learn_view.dart';
import 'package:music_box/202/service/service_post_get_learn_view.dart';
import 'package:music_box/202/tab_learn.dart';
import 'package:music_box/demos/color_life_cycle_view.dart';
import 'package:music_box/demos/my_collections_demos.dart';

void main() {
  runApp(const BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          //temalara erişerek projenin her yerindeki widgetleri set ediyoruz.
          cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          )),
      home: const ServiceLearn(),
    );
  }
}
