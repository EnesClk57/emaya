import 'package:flutter/material.dart';

class PrixWidget extends StatelessWidget {
  final double prixActuel;
  final double prixAncien;

  const PrixWidget({
    super.key,
    required this.prixActuel,
    required this.prixAncien,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${prixActuel.toStringAsFixed(2)}€',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 0, 145, 7), // Couleur pour mettre en valeur
          ),
        ),
        const SizedBox(width: 5),
        Text(
          '${prixAncien.toStringAsFixed(2)}€',
          style: const TextStyle(
            fontSize: 14,
            color: Colors.red,
            decoration: TextDecoration.lineThrough, // Prix barré
          ),
        ),
      ],
    );
  }
}
