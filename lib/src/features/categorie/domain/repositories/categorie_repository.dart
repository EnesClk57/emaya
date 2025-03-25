import 'package:emaya/src/features/categorie/domain/entities/categorie_entity.dart'; 
import 'package:flutter/material.dart'; 

 class CategorieRepositoryFake {   static final List<CategorieEntityFake> _lesCategories = [
       CategorieEntityFake(
        'Fruits', 'fruits.png', const Color.fromARGB(255, 83, 177, 117)),
       CategorieEntityFake('Légumes', 'veg.png', const Color.fromARGB(255, 241, 147, 47)),
       CategorieEntityFake('Herbes', 'spinach.png', const Color.fromARGB(255, 247, 152, 131)),
       CategorieEntityFake('Noix', 'nuts.png', const Color.fromARGB(255, 211, 176, 224)),
       CategorieEntityFake('Epices', 'spices.png', const Color.fromARGB(255, 245, 218, 130)),
       CategorieEntityFake('Grains', 'grains.png', const Color.fromARGB(255, 151, 210, 242)),
       CategorieEntityFake( 'Fruits', 'fruits.png', const Color.fromARGB(255, 40, 229, 110)),
       CategorieEntityFake( 'Légumes', 'veg.png', const Color.fromARGB(255, 241, 147, 47)),];
       
       static CategorieEntityFake getCategorie(int index) => _lesCategories[index]; } 