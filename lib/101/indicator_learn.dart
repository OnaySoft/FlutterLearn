import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(actions: const [Center(child: CenteralCircuralProgress())]),
      body: const LinearProgressIndicator(),
    );
  }
}

class CenteralCircuralProgress extends StatelessWidget {
  const CenteralCircuralProgress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      color: Colors.white,
    );
  }
}
