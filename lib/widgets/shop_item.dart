import 'package:flutter/material.dart';
import 'package:meals_app/models/shop.dart';
import '../screens/shop_detail_screen.dart';

class ShopItem extends StatelessWidget {
  /* final String codice;
  final String nome;
  final Color color;
  ShopItem(this.codice, this.nome, this.color); */
  final Shop shop;
  ShopItem(this.shop);

  void selectShop(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ShopDetailScreen.routeName, arguments: shop);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectShop(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Text(shop.nome, style: Theme.of(context).textTheme.headline6),
            Text(shop.codice, style: Theme.of(context).textTheme.headline6),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              shop.color.withOpacity(0.7),
              shop.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
