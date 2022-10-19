import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/state.dart';

class EditPage extends StatelessWidget {
  final int index;
  final ctrl = TextEditingController();
  EditPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    ctrl.text = context.read<Todo>().tasks[index];
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        TextField(
          controller: ctrl,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<Todo>().edit(index, ctrl.text);
                  Navigator.pop(context);
                },
                child: const Text('Save'),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<Todo>().delete(index);
                  Navigator.pop(context);
                },
                child: const Text('Delete'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
