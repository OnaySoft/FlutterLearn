import 'package:flutter/material.dart';
import 'package:music_box/202/package/loading_bar.dart';
import 'package:music_box/demos/password_textfield.dart';

class PakageLearnView extends StatefulWidget {
  const PakageLearnView({super.key});

  @override
  State<PakageLearnView> createState() => _PakageLearnViewState();
}

class _PakageLearnViewState extends State<PakageLearnView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: const Column(
        children: [
          PasswordTextField(),
          Center(child: LoadingBarView(size: 10)),
        ],
      ),
    );
  }
}
