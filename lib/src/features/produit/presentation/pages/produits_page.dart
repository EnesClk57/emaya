// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';


import 'package:intl/intl.dart';
import 'package:emaya/src/features/categorie/data/models/categorie.dart';
import 'package:emaya/src/features/produit/data/models/produit.dart';
import 'package:emaya/src/features/produit/domain/service/produit_service.dart';


class ProduitsPage extends StatefulWidget {
  const ProduitsPage({
    super.key,
    this.categorie,
  });


  final Categorie? categorie;


  @override
  State<ProduitsPage> createState() => _ProduitsPageState();
}


class _ProduitsPageState extends State<ProduitsPage> {
  List<Produit>? lesProduits;
  bool isLoaded = false;


  @override
  void initState() {
    super.initState();
    loadProduits();
  }


  Future<void> loadProduits() async {
    final produitService = ProduitService();
    if (widget.categorie == null) {
      lesProduits = await produitService.getAllProduits();
    } else {
      lesProduits =
          await produitService.getAllProduitsCateg(widget.categorie!.id);
    }
    setState(() {
      isLoaded = true;
    });
  }


  @override
  Widget build(BuildContext context) {
    NumberFormat formatter = NumberFormat.decimalPatternDigits(
      locale: 'fr',
      decimalDigits: 2,
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('Produits'),
        backgroundColor: Theme.of(context).navigationBarTheme.indicatorColor?.withOpacity(0.7),
      ),
      body: isLoaded && lesProduits != null
          ? SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: lesProduits!
                              .map(
                                (produit) => Column(
                                  children: [
                                    const SizedBox(height: 6),
                                    InkWell(
                                      onTap: () {
                                        // page détail produit
                                      },
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Text(produit.libelle),
                                             ),
                                          Expanded(
                                            child: Text(
                                                '${formatter.format(produit.prix)}€'),
                                          ),
                                          Expanded(
                                            child:
                                                Text(produit.cru ? 'cru' : ''),
                                          ),
                                          Expanded(
                                            child: Text(DateFormat('dd/MM/yy').format(produit.debutDisponibilite).toString())
                                                ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    const Divider(),
                                  ],  
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}


