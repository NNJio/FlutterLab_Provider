import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/providers/counter_provider.dart';
import 'package:provider1/providers/shopping_cart_provider.dart';

import 'screens/home.dart';
import 'screens/second_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCart()),

    ],
    child: const MyApp(),
  ),
 );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => const MyHomePage(),
        '/second':(context) => const SecondPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
