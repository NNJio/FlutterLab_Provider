import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/state.dart';

class AddPage extends StatelessWidget {
  AddPage({super.key});
  final ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextField(
          controller: ctrl,
        ),
        ElevatedButton(
            onPressed: () {
              context.read<Todo>().add(ctrl.text);
              Navigator.pop(context);
            },
            child: Text('Add'))
      ]),
    );
  }
}
