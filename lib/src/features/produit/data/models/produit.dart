import 'dart:convert';


List<Produit> produitsFromJson(String str) => List<Produit>.from(json.decode(str).map((x) => Produit.fromJson(x)));


Produit produitFromJson(String str) => Produit.fromJson(json.decode(str));


class Produit {
    int id;
    String libelle;
    double prix;
    String description;
    bool cru;
    bool cuit;
    bool bio;
    DateTime debutDisponibilite;
    DateTime finDisponibilite;


    Produit({
        required this.id,
        required this.libelle,
        required this.prix,
        required this.description,
          required this.cru,
        required this.cuit,
        required this.bio,
        required this.debutDisponibilite,
        required this.finDisponibilite,
    });


    factory Produit.fromJson(Map<String, dynamic> json) => Produit(
        id: json["id"],
        libelle: json["libelle"],
        prix: double.parse(json["prix"]),
        description: json["description"],
        cru: json["cru"],
        cuit: json["cuit"],
        bio: json["bio"],
        debutDisponibilite: DateTime.parse(json["debutDisponibilite"]),
        finDisponibilite: DateTime.parse(json["finDisponibilite"]),
    );
}
