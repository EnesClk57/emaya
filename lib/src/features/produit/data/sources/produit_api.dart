import 'dart:convert';
import 'package:emaya/src/features/produit/data/models/produit.dart';
import 'package:http/http.dart' as http;


class ProduitApi {
  Future<List<Produit>?> getAllProduits() async {
    var client = http.Client();
    var uri = Uri.parse('http://10.0.2.2:8000/api/produits');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      return produitsFromJson(const Utf8Decoder().convert(response.bodyBytes));
    } else {
      throw Exception('Erreur lecture produits : ${response.body}');
    }
  }


  Future<List<Produit>?> getAllProduitsCateg(int idCategorie) async {
    var client = http.Client();
    var uri =
        Uri.parse('http://10.0.2.2:8000/api/produits?categorie=$idCategorie');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      return produitsFromJson(const Utf8Decoder().convert(response.bodyBytes));
    } else {
      throw Exception(
          'Erreur lecture produits de catégorie : ${response.body}');
    }
  }
}
