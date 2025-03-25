import 'dart:convert';
import 'package:emaya/src/core/config/app_config.dart';
import 'package:emaya/src/features/categorie/data/models/categorie.dart';
import 'package:http/http.dart' as http;


//
// classe qui est responsable de la récupération des données à partir de l’API REST
//
class CategorieApi {
  // envoie une requête GET au point de terminaison API spécifié
 Future<List<Categorie>?> getAllCategories() async {
    var client = http.Client();
    var uri = Uri.parse('${AppConfig.API_BASE_URL}categories');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      // Nous analysons le corps de réponse
      //   et le convertissons en un tableau d’objets Categorie
      //   en invoquant la méthode categoriesFromJson.
      // Nous utilisons Utf8Decoder pour gérer correctement les caractères UTF-8,
      //   tels que les caractères accentués, dans la réponse.
      // Le tableau de catégories est ensuite retourné (List<Categorie> est le type de retour de fonction).
      return categoriesFromJson(
          const Utf8Decoder().convert(response.bodyBytes));
    } else {
      throw Exception('Erreur lecture catégories : ${response.body}');
    }
  }
}
