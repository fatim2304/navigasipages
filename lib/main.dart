import 'package:flutter/material.dart';
import 'package:navigasipages/pages/home_pages.dart';
import 'package:navigasipages/pages/item_pages.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Belanja App',
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/item': (context) => ItemPage(),
        },
        // Menangani routing untuk halaman yang tidak dikenal
        onUnknownRoute: (settings) {
          return MaterialPageRoute(builder: (context) => HomePage());
          },
        );
    }
}