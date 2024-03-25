import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String food = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(
                  onpress: () {},
                  title: food,
                ),
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomFoodButton(
                onpress: () {},
                title: food,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

mixin _colorUtility {
  final Color red = Colors.red;
  final Color white = Colors.white;
}

mixin _paddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
}

class CustomFoodButton extends StatelessWidget
    with _colorUtility, _paddingUtility {
  CustomFoodButton({super.key, required this.title, required this.onpress});
  final String title;
  final void Function() onpress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: red,
        shape: const StadiumBorder(),
      ),
      onPressed: onpress,
      child: Padding(
        padding: normalPadding,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .copyWith()
              .labelLarge
              ?.copyWith(color: white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
