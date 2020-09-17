import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Shop {
  final String codice;
  final String prov;
  final String citta;
  final String indirizzo;
  final String nome;
  final Color color;

  const Shop(
      {@required this.codice,
      @required this.prov,
      @required this.citta,
      @required this.indirizzo,
      @required this.nome,
      this.color = Colors.orange});
}
