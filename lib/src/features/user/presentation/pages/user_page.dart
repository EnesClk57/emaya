import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          title: Text('Mode sombre',
              style: Theme.of(context).textTheme.labelLarge),
          secondary: Icon(
            Icons.dark_mode_outlined,
            color: Theme.of(context).textTheme.labelLarge!.color!,
          ),
          onChanged: (bool value) {
            setState(() {
              AdaptiveTheme.of(context).toggleThemeMode();
            });
          },
          value: AdaptiveTheme.of(context).mode.isDark,
        ),
      ),
    );
  }
}

