import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/models/app_model.dart';
import 'package:provider1/models/noti_model.dart';
import 'package:provider1/screens/home_sceen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppModel>(create: (_)=> AppModel()),
        ChangeNotifierProvider<NotiModel>(create: (_)=> NotiModel()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeSceen(
            title: 'This\'s Home Screen',
          )),
    );
  }
}
