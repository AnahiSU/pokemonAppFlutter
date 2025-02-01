import 'package:feed_card_project/core/theme.dart';
import 'package:feed_card_project/presentation/pages/home_page.dart';
import 'package:feed_card_project/presentation/pages/pokemon_page.dart';
import 'package:feed_card_project/presentation/providers/toggle_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ChangeTheme(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ChangeTheme>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeLight(),
      darkTheme: themeDark(),
      themeMode: themeProvider.themeMode,
      // home: const HomePage(),
      home: PokemonPage(),
    );
  }
}
