library app_colors;

import 'package:flutter/material.dart';

class AppColor {
  static Color black = const Color(0xFF000000);
  static Color white = const Color(0xFFFFFFFF);
  static Color red = const Color.fromRGBO(233, 21, 21, 1);

  // Couleurs pour le thème clair
  static  Color lightBackGroundColor = Color(0xFFF5F5F5);  // Couleur de fond générale en mode clair
  static  Color lightPrimaryColor    = Color(0xFF2196F3);  // Couleur primaire en mode clair
  static  Color lightCardColor       = Color(0xFFFFFFFF);  // Couleur des cartes en mode clair
  static  Color lightCanvasColor     = Color(0xFFFDFDFD);  // Couleur de la toile/canvas en mode clair
  static  Color lightNavBackGroundColor = Color(0xFFECEFF1); // Couleur de fond de la barre de navigation en mode clair
  static  Color lightIndicatorColor  = Color(0xFF2196F3);  // Couleur de l'indicateur en mode clair
  static  Color lightTextColor       = Color(0xFF000000);  // Couleur du texte en mode clair

  // Couleurs pour le thème sombre
  static  Color darkBackGroundColor  = Color(0xFF121212);  // Couleur de fond générale en mode sombre
  static  Color darkPrimaryColor     = Color(0xFFBB86FC);  // Couleur primaire en mode sombre
  static  Color darkCardColor        = Color(0xFF1E1E1E);  // Couleur des cartes en mode sombre
  static  Color darkNavBackGroundColor = Color(0xFF1C1F24); // Couleur de fond de la barre de navigation en mode sombre
  static  Color darkIndicatorColor   = Color(0xFFBB86FC);  // Couleur de l'indicateur en mode sombre
  static  Color darkTextColor        = Color(0xFFFFFFFF);  // Couleur du texte en mode sombre
  static  Color darkCanvasColor      = Color(0xFF303030);

  static List<Color> couleursCat = [
    const Color.fromARGB(255, 40, 229, 110),
    const Color.fromARGB(255, 241, 147, 47),
    const Color.fromARGB(255, 247, 152, 131),
    const Color.fromARGB(255, 206, 161, 223),
    const Color.fromARGB(255, 245, 218, 130),
    const Color.fromARGB(255, 151, 210, 242),
    const Color.fromARGB(255, 83, 177, 117),
    const Color(0xffF8A44C),
    const Color(0xffF7A593),
    const Color.fromARGB(255, 211, 176, 224),
    const Color(0xffFDE598),
    const Color(0xffB7DFF5),


  ];
}
