import 'package:flutter/material.dart';
import 'package:music_box/product/counter_helloButton.dart';
import 'package:music_box/product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});
//burası sabit sadace data al ver. yani dışarıyla haberleşiyoruz.
  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
//hayat burada belirleniyor.
  int _countValue = 0;
  final int _counterCustom = 0;
  void _updateCounter(bool isIncrement) {
    if (isIncrement) {
      _countValue = _countValue + 1;
    } else {
      _countValue = _countValue - 1;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LanguageItems.welcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          incrementButton(),
          deincrementButton(),
        ],
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            _countValue.toString(),
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Placeholder(),
          const CounterHelloButton()
        ],
      )),
    );
  }

  Padding deincrementButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _updateCounter(false);
        },
        child: const Icon(Icons.remove),
      ),
    );
  }

  FloatingActionButton incrementButton() {
    print('deneme');
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }
}
