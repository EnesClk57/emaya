import 'package:emaya/src/features/categorie/data/models/categorie.dart';
import 'package:emaya/src/features/categorie/domain/service/categorie_service.dart';
import 'package:emaya/src/features/categorie/presentation/widgets/categorie_widget.dart';
import 'package:flutter/material.dart';


class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});


  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}


class _CategoriesPageState extends State<CategoriesPage> {
  List<Categorie>? lesCategories;
  bool isLoaded = false;


  @override
void initState() {
    super.initState();
    loadCategories();
  }


  Future<void> loadCategories() async {
    final categorieService = CategorieService();
    lesCategories = await categorieService.getAllCategories();
    setState(() {
      isLoaded = true;
    });
  }


  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Catégories'),
      ),
      body: isLoaded && lesCategories != null
          ? SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 300 / 250,
                  children: lesCategories!.map((categorie) {
                    return CategorieWidget(categorie: categorie, indCategorie: lesCategories!.indexOf(categorie));
                  }).toList(),
                ),
              ),
            )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
