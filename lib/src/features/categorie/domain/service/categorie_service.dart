import 'package:emaya/src/features/categorie/data/models/categorie.dart';
import 'package:emaya/src/features/categorie/data/sources/categorie_api.dart';


// classe qui sert d’intermédiaire entre l’interface utilisateur et l’API
class CategorieService {
  final _api = CategorieApi();


  Future<List<Categorie>?> getAllCategories() async {
    return _api.getAllCategories();
  }
}
