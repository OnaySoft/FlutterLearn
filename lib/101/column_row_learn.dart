import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.blue)),
                  Expanded(child: Container(color: Colors.pink)),
                  Expanded(child: Container(color: Colors.purple)),
                ],
              )),
          const Spacer(
              flex: 2), //yukarısı ile araya 2 birimlik boşluk bırakıyor
          const Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceAround, //aralarında eşit aralık bırakıyor (yatayda)
                crossAxisAlignment:
                    CrossAxisAlignment.start, //dikeyde konumlandırma
                children: [
                  Text('data'),
                  Text('data'),
                  Text('data'),
                ],
              )),
          const Expanded(flex: 2, child: FlutterLogo())
        ],
      ),
    );
  }
}
