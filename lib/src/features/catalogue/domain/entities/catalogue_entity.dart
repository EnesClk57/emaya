import 'package:flutter/material.dart';

class CatalogueEntityFake {
  final String _id;
  final String _nom;
  final String _unite;
  final double _prix;
  final String _image;
  final bool _icone;
  final Color _couleur; // Ajout de la couleur

  CatalogueEntityFake(this._id, this._nom, this._unite, this._prix, this._image, this._icone, this._couleur);

  String get id => _id;
  String get nom => _nom;
  String get unite => _unite;
  double get prix => _prix;
  String get image => _image;
  bool get icone => _icone;
  Color get couleur => _couleur;
}
