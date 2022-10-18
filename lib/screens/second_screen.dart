import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/models/noti_model.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Consumer<NotiModel>(
      builder: (context, notiModel, child) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            children: [
              Text(notiModel.text1),
              Text(notiModel.text2),
              ElevatedButton(
                onPressed: () {
                  notiModel.text2 = 'Change by button';
                  },
                child: const Text('Change Values')),
            ],
          ),
        ),
      ),
    );
  }
}
 