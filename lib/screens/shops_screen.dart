import 'package:flutter/material.dart';
import 'package:meals_app/models/shop.dart';
import '../widgets/shop_item.dart';
//import '../widgets/category_item.dart';
import '../dummy_data.dart';

class ShopsScreen extends StatelessWidget {
  static const routeName = '/shops';
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
      future: httpService.getShops(),
      builder: (BuildContext context, AsyncSnapshot<List<Shop>> snapshot) {
        if (snapshot.hasData) {
          List<Shop> shops = snapshot.data;
          return GridView(
            padding: const EdgeInsets.all(25),
            children: shops.map((shopData) => ShopItem(shopData)).toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          );
        }

        return Center(child: CircularProgressIndicator());
      },
    ));
    /* return GridView(
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
    ); */
  }
}
