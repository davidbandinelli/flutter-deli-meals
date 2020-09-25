import 'package:flutter/material.dart';
import 'package:meals_app/models/shop.dart';
import '../dummy_data.dart';

class ShopDetailScreen extends StatelessWidget {
  static const routeName = '/shop-detail';

  ShopDetailScreen();

  Widget buildSectionTitle(BuildContext context, String sectionTitle) {
    return Container(
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text(
        sectionTitle,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 150,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    print(ModalRoute.of(context).settings.arguments.toString());
    //final codice = ModalRoute.of(context).settings.arguments as String;

    final shop = ModalRoute.of(context).settings.arguments as Shop;
    /* final selectedShop =
        DUMMY_SHOPS.firstWhere((shop) => shop.codice == codice); */
    return Scaffold(
      appBar: AppBar(
        title: Text('${shop.nome}'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          buildSectionTitle(context, '${shop.citta}'),
          buildSectionTitle(context, '${shop.indirizzo}'),
          buildSectionTitle(context, '${shop.prov}'),
        ]),
      ),
    );
  }
}
