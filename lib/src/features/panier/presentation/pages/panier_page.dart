import 'package:flutter/material.dart';
import 'package:emaya/src/features/panier/presentation/widgets/item_panier_widget.dart';

class PanierPage extends StatelessWidget {
  const PanierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mon Panier'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (ctx, index) {
                  return const ItemPanierWidget();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
