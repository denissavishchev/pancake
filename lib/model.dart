import 'dart:convert';
import 'package:flutter/material.dart';

class Pancakes {
  final String name;
  final String image;
  final String price;

  const Pancakes({
    required this.name,
    required this.image,
    required this.price,
  });

  static Pancakes fromJson(json) =>
      Pancakes(
        name: json['name'],
        image: json['image'],
        price: json['price'],
      );
}

class PancakesApi {
  static Future<List<Pancakes>> getPancakes(BuildContext context) async {
    final assetBungle = DefaultAssetBundle.of(context);
    final data = await assetBungle.loadString('assets/pancake.json');
    final body = jsonDecode(data);
    return body.map<Pancakes>(Pancakes.fromJson).toList();
  }
}