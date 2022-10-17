import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/providers/counter_provider.dart';

import 'screens/home.dart';
import 'screens/second_page.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
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
        '/':(context) => MyHomePage(),
        'second':(context) => const SecondPage(),
      },
      // debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   backgroundColor: Colors.grey,
      //   primarySwatch: Colors.blue,
      // ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
