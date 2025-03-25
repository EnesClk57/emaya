import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:emaya/src/core/theme/theme.dart';
import 'package:emaya/src/features/categorie/presentation/pages/categories_page.dart';
import 'package:emaya/src/features/home/presentation/pages/home_page.dart';
import 'package:emaya/src/features/user/presentation/pages/user_page.dart';

import 'package:flutter/material.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key, this.savedThemeMode});
  // savedThemeMode peut être null si utilisateur ouvre appli pour première fois
  final AdaptiveThemeMode? savedThemeMode;

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: AppTheme.lightThemeData,
      dark: AppTheme.darkThemeData,
      // si savedThemeMode est null, on utilise le theme dark par défaut
      initial: savedThemeMode ?? AdaptiveThemeMode.dark, 
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Maya',
        theme: theme,
        darkTheme: darkTheme,
        home: const HomePage(),
      ),
    );
  
  }
}
