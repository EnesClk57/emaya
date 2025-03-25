import 'package:emaya/src/features/catalogue/presentation/widgets/item_catalogue.dart';
import 'package:flutter/material.dart';

class CataloguePage extends StatelessWidget {
  const CataloguePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalogue'),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: const Icon(
              Icons.delete,
            ),
          ),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 8.0), // Ajout du padding
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 12,
                  itemBuilder: (ctx, index) {
                    return const ItemCatalogueWidget();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
