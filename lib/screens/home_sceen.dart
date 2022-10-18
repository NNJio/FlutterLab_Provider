import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/models/app_model.dart';
import 'package:provider1/screens/second_screen.dart';

class HomeSceen extends StatefulWidget {
  const HomeSceen({super.key, required this.title});

  final String title;

  @override
  State<HomeSceen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Consumer<AppModel>(
          builder: (context, appModel, child) => Column(
            children: [
              Text(appModel.text1),
              Text('Text2'),
              ElevatedButton(
                child: const Text('You can Change'),
                onPressed: () {
                  setState(() {
                    appModel.text1 = 'Text1';
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondScreen(
                                title: 'This\'s Second Screen',
                              )));
                },
              ),
              ElevatedButton(
                child: const Text('Roll Back'),
                onPressed: () {
                  setState(() {
                    appModel.text1 = 'Default';
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
