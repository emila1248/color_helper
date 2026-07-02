import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'home_page.dart';
import 'settings.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Settings(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final settings = context.watch<Settings>();

    return MaterialApp(
      title: 'Color Helper',
      debugShowCheckedModeBanner: false,
      theme: settings.themeData,
      home: HomePage()
    );
  }
}