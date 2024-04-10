import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key});

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  final _obscuringCharacter = '#';
  bool _isObscured = true;

  void _changeLoading() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofillHints: const [AutofillHints.password],
      keyboardType: TextInputType.visiblePassword,
      obscureText: _isObscured,
      obscuringCharacter: _obscuringCharacter,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        hintText: 'Password',
        suffix: _onVisiblityIcon(),
      ),
    );
  }

  IconButton _onVisiblityIcon() {
    return IconButton(
        onPressed: _changeLoading,
        //icon: Icon(_isObscured ? Icons.visibility : Icons.visibility_off));
        icon: AnimatedCrossFade(
            firstChild: const Icon(Icons.visibility_outlined),
            secondChild: const Icon(Icons.visibility_off_outlined),
            crossFadeState: _isObscured ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1)));
  }
}
