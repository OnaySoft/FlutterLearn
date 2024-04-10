import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBarView extends StatelessWidget {
  const LoadingBarView({super.key, required this.size});
  final double? size;
  final double _defaultSize = 40.0;
  @override
  Widget build(BuildContext context) {
    return SpinKitSquareCircle(
      color: Colors.red,
      size: size ?? _defaultSize,
    );
  }
}
