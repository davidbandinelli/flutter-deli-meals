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

  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
        codice: json['codice'] as String,
        prov: json['prov'] as String,
        citta: json['citta'] as String,
        indirizzo: json['indirizzo'] as String,
        nome: json['nome'] as String,
        color: Colors.orange);
  }
}
