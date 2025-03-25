library widgets;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ItemPanierWidget extends StatefulWidget {
  const ItemPanierWidget({super.key});

  @override
  State<ItemPanierWidget> createState() => _ItemPanierWidgetState();
}

class _ItemPanierWidgetState extends State<ItemPanierWidget> {
  final _quantiteTextController = TextEditingController();
  var prixProduit = 2.30; // Champ

  @override
  void initState() {
    _quantiteTextController.text = '1';
    super.initState();
  }

  @override
  void dispose() {
    _quantiteTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    // Image
                    Container(
                      height: size.width * 0.25,
                      width: size.width * 0.25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Image.network('https://i.ibb.co/F0s3FHQ/Apricots.png'),
                    ),
                    // Nom et contrôle de quantité
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Abricots',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        const SizedBox(height: 12.0),
                        SizedBox(
                          width: size.width * 0.4,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  if (_quantiteTextController.text != '1') {
                                    setState(() {
                                      _quantiteTextController.text = (int.parse(_quantiteTextController.text) - 1).toString();
                                    });
                                  }
                                },
                                icon: const Icon(Icons.remove_circle),
                                color: Colors.red,
                                iconSize: 40,
                              ),
                              Flexible(
                                flex: 1,
                                child: TextField(
                                  controller: _quantiteTextController,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.labelMedium,
                                  keyboardType: TextInputType.number,
                                  maxLines: 1,
                                  decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                  ),
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                                  ],
                                  onChanged: (v) {
                                    setState(() {
                                      if (v.isEmpty) {
                                        _quantiteTextController.text = '1';
                                      }
                                    });
                                  },
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    _quantiteTextController.text = (int.parse(_quantiteTextController.text) + 1).toString();
                                  });
                                },
                                icon: const Icon(Icons.add_circle),
                                color: Theme.of(context).primaryColor,
                                iconSize: 40,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    // Suppression et prix total
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.remove_shopping_cart_outlined,
                              color: Colors.red,
                              size: 30,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '${(prixProduit * int.parse(_quantiteTextController.text)).toStringAsFixed(2)}€',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
