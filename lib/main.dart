import 'package:flutter/material.dart';

// * Page
import 'package:app_count/pages/homePage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Count App', home: HomePage());
  }
}
