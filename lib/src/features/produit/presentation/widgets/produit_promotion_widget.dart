import 'package:emaya/src/features/produit/presentation/widgets/prix_widget.dart';
import 'package:flutter/material.dart';

class ProduitPromotionWidget extends StatefulWidget {
  const ProduitPromotionWidget({super.key});

  @override
  State<ProduitPromotionWidget> createState() => _ProduitPromotionWidgetState();
}

class _ProduitPromotionWidgetState extends State<ProduitPromotionWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Material(
        color: Theme.of(context).cardColor.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        'assets/images/cat/grains.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          "1kg",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const Icon(Icons.shopping_cart_outlined, color: Colors.black),
                            const SizedBox(width: 8),
                            const Icon(Icons.favorite_border, color: Colors.black),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const PrixWidget(
                  prixActuel: 1.49,
                  prixAncien: 1.99,
                ),
                const SizedBox(height: 5),
                const Text(
                  "Abricots",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
