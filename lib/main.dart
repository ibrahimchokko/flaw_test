
import 'package:flaws_test/data/notifiers.dart';
import 'package:flaws_test/widget/widget_tree.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: isDarkModeNotifier, builder: (context, isDarkMode, child) {
      return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.orange,
        brightness: isDarkMode? Brightness.light : Brightness.dark)),
      debugShowCheckedModeBanner: false,
      home: WidgetTree()
    );
    },);
  }
}