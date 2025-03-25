import 'package:emaya/src/core/constants/colors.dart';
import 'package:emaya/src/features/produit/presentation/widgets/produit_promotion_widget.dart';
import 'package:emaya/src/features/produit/presentation/widgets/produit_vente_widget.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';


class ProduitsVentePage extends StatefulWidget {
  const ProduitsVentePage({super.key});

  @override
  State<ProduitsVentePage> createState() => _ProduitsVentePageState();
}

class _ProduitsVentePageState extends State<ProduitsVentePage> {
  // tableau des images pour le carrousel
  final List<String> _imagesMaya = ["assets/images/cat/fruits.png", 
  "assets/images/cat/grains.png", "assets/images/cat/nuts.png"
  ];

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: screenSize.height * 0.20,
            // --> carrousel
            child: Swiper(
              itemBuilder: (BuildContext context, int index) {
                // utiliser l'image dans le tableau à l'indice index
                return Image.asset(
                  _imagesMaya[index], // Utiliser l'image dans le tableau
                );
              },
              autoplay: true,
              itemCount: _imagesMaya.length,
              pagination: SwiperPagination(
                alignment: Alignment.bottomCenter,
                builder: DotSwiperPaginationBuilder(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  activeColor: AppColor.red,
                ), // DotSwiperPaginationBuilder
              ), // SwiperPagination
            ), // Swiper
          ), // SizedBox
          SizedBox(
            height: 100,
            // --> "Voir tout" pour afficher PromotionsPage
           child: Center(
              child: TextButton(
               child: Text(
                "Voir tout",
                style: TextStyle(fontSize: 25),
              ),
              onPressed: () async {},
            ),
          ),
        ),
        
                 Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            //     // --> RotatedBox pour écrire le texte "Promotions en vertical"
            RotatedBox(
              quarterTurns: -1,
              child: Row(children: [

                // --> Texte promotions avec icone Icons.discount_outlined
                Text(
                  "PROMOTION",
                  style: TextStyle(color: Colors.red, fontSize: 22),
                ),
                // const SizedBox(),
                const Icon(
                  Icons.percent_outlined,
                  color: Colors.red,
                  size: 32,
                )
              ]),
            ),

            // --> pour la liste des produits en promotions
            Flexible(
                child: SizedBox(
              height: screenSize.height * 0.24,
              child: ListView.builder(
                  itemCount: 8,
                  // controller: _controller,
                  // physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return const ProduitPromotionWidget();
                  }),
            ))
          ],
        ),
          Padding(
          padding: const EdgeInsets.only(top: 9, left: 8, right: 8, bottom: 6),
          // --> Ligne Nos produits Afficher tout
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Nos produits"),
              TextButton(
                onPressed: () => {},
                child: Text("Voir tout"),
              )
            ],
          ),
        ),

        // --> gridView des produits en vente
        GridView.builder(
          itemCount: 6,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 300 / 250),
          itemBuilder: (_, int index) {
            return Container(
              decoration: BoxDecoration(
                  // withOpacity RGB= opacité avec le mode rgb sinon utiliser []
                  color: const Color.fromARGB(255, 167, 236, 153),
                  border: Border.all(width: 6, color: const Color.fromARGB(255, 167, 236, 153)),
                  borderRadius: BorderRadius.circular(12)),
              width: 3,
              child: Column(children: [
                Container(
                    width: screenSize.width * 0.3,
                    height: screenSize.width * 0.2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/cat/grains.png'),
                          fit: BoxFit.fill),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [Text("Abricots")],
                    ),
                    Column(
                      children: [Icon(Icons.heart_broken_sharp)],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "2.50€",
                      style: TextStyle(
                          color: Color.fromARGB(255, 59, 125, 60),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "2.50€",
                      style: TextStyle(
                        color: Color.fromARGB(255, 59, 125, 60),
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ]),
            );
          },
        ),
      ]),
    ));
  }
}
