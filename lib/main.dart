 
    import 'package:adaptive_theme/adaptive_theme.dart';
    import 'src/core/config/config.dart';
    import 'package:flutter/material.dart';
    import 'root_app.dart';
Future<void> main() async {
  // Après initialisation d'une instance de WidgetsFlutterBinding
  WidgetsFlutterBinding.ensureInitialized();
  // on récupère le mode de thème (clair ou sombre) 
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  // et on le passe en paramètre à RootApp
  runApp(RootApp(savedThemeMode: savedThemeMode));
    }
    