import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  State<MyCollectionDemos> createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: PaddingUtility().paddingHorizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _CatogoryCard(model: _items[index]);
        },
      ),
    );
  }
}

class _CatogoryCard extends StatelessWidget {
  const _CatogoryCard({
    super.key,
    required CollectionModel model,
  }) : _model = model;

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: PaddingUtility().paddingTop,
      child: Padding(
        padding: PaddingUtility().paddingGeneral,
        child: Column(
          children: [
            Image.asset(
              _model.imageUrl,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: PaddingUtility().paddingBottom,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_model.title),
                  Text('${_model.price} eth'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CollectionModel {
  final String imageUrl;
  final String title;
  final double price;

  CollectionModel({required this.imageUrl, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 20);
  final paddingGeneral = const EdgeInsets.all(20);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(imageUrl: ProjectImages.ImageCollection, title: 'Etheryum-0', price: 3.5),
      CollectionModel(imageUrl: ProjectImages.ImageCollection, title: 'Etheryum-1', price: 3.6),
      CollectionModel(imageUrl: ProjectImages.ImageCollection, title: 'Etheryum-2', price: 3.2),
      CollectionModel(imageUrl: ProjectImages.ImageCollection, title: 'Etheryum-3', price: 3.1),
      CollectionModel(imageUrl: ProjectImages.ImageCollection, title: 'Etheryum-3', price: 3.1),
    ];
  }
}

class ProjectImages {
  static const ImageCollection = 'assets/images/collection_image.png';
}
