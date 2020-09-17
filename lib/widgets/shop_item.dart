import 'package:flutter/material.dart';
import '../screens/shop_detail_screen.dart';

class ShopItem extends StatelessWidget {
  final String codice;
  final String nome;
  final Color color;
  ShopItem(this.codice, this.nome, this.color);

  void selectShop(BuildContext ctx) {
    Navigator.of(ctx)
        .pushNamed(ShopDetailScreen.routeName, arguments: codice);
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
            Text(nome, style: Theme.of(context).textTheme.headline6),
            Text(codice, style: Theme.of(context).textTheme.headline6),
          ],
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
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
