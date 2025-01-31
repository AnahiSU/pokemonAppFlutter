import 'package:feed_card_project/core/theme.dart';
import 'package:feed_card_project/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:feed_card_project/providers/toggle_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => ChangeTheme()), 
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
      home: HomePage(),
    );
  }
}
