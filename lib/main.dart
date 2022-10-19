import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/pages/home_page.dart';
import 'package:provider1/providers/state.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (_) => Todo(),
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      ),
    ),
  );
}
