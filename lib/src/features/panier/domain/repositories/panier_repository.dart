// import 'package:emaya/src/features/panier/domain/entities/panier_entity.dart';

// void main() {
//   final panierRepository = PanierRepository();

//   // Ajout de produits
//   panierRepository.ajouterAuPanier(PanierEntityFake("Abricot", 4.60, 2));
//   panierRepository.ajouterAuPanier(PanierEntityFake("Banane", 2.50, 3));

//   // Affichage du panier
//   for (var produit in panierRepository.getPanier()) {
//     print("${produit.nomProduit} - ${produit.quantite} x ${produit.prix}€");
//   }

//   // Total
//   print("Total panier : ${panierRepository.totalPanier()}€");

//   // Suppression d'un produit
//   panierRepository.supprimerDuPanier("Abricot");

//   // Panier mis à jour
//   print("Total après suppression : ${panierRepository.totalPanier()}€");
// }
