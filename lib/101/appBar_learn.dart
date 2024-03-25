import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key});
  final String _title = 'AppBar Learning';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: const Icon(Icons.chevron_left),
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.mail)),
          const Center(child: CircularProgressIndicator())
        ],
      ),
      body: const Text('aa'),
    );
  }
}
