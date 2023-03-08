import 'package:disenos_app/screens/basic_desing.dart';
import 'package:disenos_app/screens/home_screem.dart';
import 'package:disenos_app/screens/scroll_desing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      theme: ThemeData.dark(),
      routes: {
        'basicDesign': (_) => const BasicDesingScreen(),
        'Scroll_desing': (_) => const Scroll_desing(),
        'home_screen': (_) => const HomeScreem()
      },
    );
  }
}
