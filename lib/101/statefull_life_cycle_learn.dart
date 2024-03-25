import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.mesaj});
  final String mesaj;
  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: widget.mesaj.length.isOdd ? const Text('Tek') : const Text('Çift')),
        body: widget.mesaj.length.isOdd
            ? TextButton(onPressed: () {}, child: Text(widget.mesaj))
            : ElevatedButton(onPressed: () {}, child: Text(widget.mesaj)));
  }
}
