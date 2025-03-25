import 'dart:convert';


List<Categorie> categoriesFromJson(String str) =>
    List<Categorie>.from(json.decode(str).map((x) => Categorie.fromJson(x)));


Categorie categorieFromJson(String str) => Categorie.fromJson(json.decode(str));


String categorieToJson(Categorie data) => json.encode(data.toJson());


class Categorie {
  int id;
  String libelle;
  String imageUrl;


  Categorie({
    required this.id,
    required this.libelle,
    required this.imageUrl,
  });


  factory Categorie.fromJson(Map<String, dynamic> json) => Categorie(
        id: json["id"],
        libelle: json["libelle"],
        imageUrl: json["imageUrl"],
      );


  Map<String, dynamic> toJson() => {
        "id": id,
        "libelle": libelle,
        "imageUrl": imageUrl,
      };
}
