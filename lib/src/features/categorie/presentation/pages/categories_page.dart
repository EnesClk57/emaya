import 'package:emaya/src/features/categorie/domain/entities/categorie_entity.dart';
import 'package:emaya/src/features/categorie/domain/repositories/categorie_repository.dart';
import 'package:flutter/material.dart';
import 'package:emaya/src/features/categorie/data/repositories/categorie_repository_fake.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Catégories'),
      ),
      body: Padding(
        // Padding : const EdgeInsets.all(8.0)
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          // créer gridView avec 2 catégories par ligne et 8 catégories au total
          itemCount: 8,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 catégories par ligne
            mainAxisSpacing: 10, // espacement vertical
            crossAxisSpacing: 10, // espacement horizontal
            childAspectRatio: 300 / 250, // ratio largeur/hauteur
          ),
          itemBuilder: (_, int index) {
            CategorieEntityFake laCategorie =
                CategorieRepositoryFake.getCategorie(index); // récupérer la catégorie
            return InkWell(
              onTap: () {
                // Action à définir
              },
              onLongPress: () {
                // Action à définir
              },
              child: Container(
                decoration: BoxDecoration(
                  // Appliquer la couleur avec opacité
                  color: laCategorie.couleur.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16), // arrondir les coins
                  border: Border.all(
                    color: laCategorie.couleur.withOpacity(0.7),
                    width: 3, // épaisseur de la bordure
                  ),
                ),
                child: Column(
                  children: [
                    // Container pour l'image
                    Container(
                      height: screenWidth * 0.3, // largeur
                      width: screenWidth * 0.3, // hauteur
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/cat/${laCategorie.imageNom}'),
                          fit: BoxFit.fill, // ajustement de l'image
                        ),
                      ),
                    ),
                    Text(
                      laCategorie.libelle, // texte du libellé
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
