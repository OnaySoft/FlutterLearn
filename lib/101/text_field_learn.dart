import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        maxLength: 20,
        buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
          return AnimatedContainer(
            key: key,
            duration: const Duration(seconds: 1),
            height: 10,
            width: 10.0 * (currentLength ?? 0),
            color: Colors.red,
          );
        },
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          icon: Icon(Icons.email),
          border: OutlineInputBorder(),
          labelText: "Email",
          hintText: "Enter your email address",
        ),
      ),
    );
  }
}
