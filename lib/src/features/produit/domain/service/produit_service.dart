import 'package:emaya/src/features/produit/data/models/produit.dart';
import 'package:emaya/src/features/produit/data/sources/produit_api.dart';


class ProduitService {
  final _api = ProduitApi();


  Future<List<Produit>?> getAllProduits() async {
    return _api.getAllProduits();
  }
  Future<List<Produit>?> getAllProduitsCateg(int idCategorie) async {
    return _api.getAllProduitsCateg(idCategorie);
  }
}

