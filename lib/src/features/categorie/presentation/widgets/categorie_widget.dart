library widgets;


import 'package:emaya/src/core/constants/colors.dart';
import 'package:emaya/src/features/categorie/data/models/categorie.dart';
import 'package:emaya/src/features/categorie/domain/repositories/categorie_repository.dart';
import 'package:emaya/src/features/produit/presentation/pages/produits_page.dart';
import 'package:flutter/material.dart';
import 'package:emaya/src/core/config/app_config.dart';


class CategorieWidget extends StatefulWidget {
const CategorieWidget({
    super.key,
    required this.categorie,
    required this.indCategorie,
  });
  final Categorie categorie;
  final int indCategorie;


  @override
  State<CategorieWidget> createState() => _CategorieWidgetState();
}


class _CategorieWidgetState extends State<CategorieWidget> {


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final Categorie laCategorie = widget.categorie;
    final indCouleur = widget.indCategorie % AppColor.couleursCat.length;


    return InkWell(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProduitsPage(categorie: laCategorie),
          ),
        );

      },
      onLongPress: () {},
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.couleursCat[indCouleur].withOpacity(0.2),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: AppColor.couleursCat[indCouleur].withOpacity(0.7),
            width: 3,
          ),
        ),
        child: Column(children: [
          Container(
            height: screenWidth * 0.3,
            width: screenWidth * 0.4,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "${AppConfig.API_BASE_URL_IMG}${laCategorie.imageUrl}"),
                  ),
            ),
          ),
          Text(
            laCategorie.libelle,
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ]),
      ),
    );
  }
}
