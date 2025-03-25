import 'package:flutter/material.dart'; 

class CategorieEntityFake {   

CategorieEntityFake(this._libelle, this._imageNom, this._couleur);  
  
final String _libelle;  
final String _imageNom;  
final Color _couleur;

String get libelle => _libelle;
String get imageNom => _imageNom;
Color get couleur => _couleur; 

} 
