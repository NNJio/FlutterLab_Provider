import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/shopping_cart_provider.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'This is Provider test app ${context.watch<ShoppingCart>().count}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('${context.watch<ShoppingCart>().count}'),
            Text('${context.watch<ShoppingCart>().cart}'),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<ShoppingCart>().addItem('Bread'),
            tooltip: 'Add Item',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
