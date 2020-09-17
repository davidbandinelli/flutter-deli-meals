import 'package:flutter/material.dart';
import '../widgets/shop_item.dart';
//import '../widgets/category_item.dart';
import '../dummy_data.dart';

class ShopsScreen extends StatelessWidget {
  static const routeName = '/shops';
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_SHOPS
          .map((shopData) =>
              ShopItem(shopData.codice, shopData.nome, shopData.color))
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
