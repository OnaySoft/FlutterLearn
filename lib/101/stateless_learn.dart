import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});
  final String ali = 'Ali';
  final String text2 = 'Veli';
  final String ahmet = 'Ahmet';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _TitleWiget(
            text: ali,
          ),
          _TitleWiget(
            text: text2,
          ),
          _TitleWiget(
            text: ahmet,
          ),
        ],
      ),
    );
  }
}

//eğer class ın başına alt tre (_) koyarsak private class oluyor. sadece
//bu sayfadan çağırılabilyor.
class _TitleWiget extends StatelessWidget {
  const _TitleWiget({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.displaySmall,
    );
  }
}
