import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider1/providers/counter_provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage();

 

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is Provider test app.'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times: ${context.watch<Counter>().count}',
            ),
            const Count(),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => context.read<Counter>().remove(),
            tooltip: 'Remove',
            child: const Icon(Icons.remove),
          ),
          const SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().reset(),
            tooltip: 'Reset',
            child: const Icon(Icons.exposure_zero),
          ),
          const SizedBox(
            width: 10.0,
          ),
          FloatingActionButton(
            onPressed: () => context.read<Counter>().increment(),
            tooltip: 'Add',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}

class Count extends StatelessWidget {
  const Count({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().count}',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
