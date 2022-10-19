import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/pages/add_page.dart';
import 'package:provider1/pages/edits_page.dart';

import '../providers/state.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var tasks = context.watch<Todo>().tasks;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tasks[index]),
              onTap: (){
                Navigator.push(
              context, MaterialPageRoute(builder: (_) => EditPage(index: index)));
              }
              );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((_) => AddPage())));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
