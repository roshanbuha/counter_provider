import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/counter_provider.dart';

class HomePageDemo extends StatefulWidget {
  const HomePageDemo({Key? key}) : super(key: key);

  @override
  State<HomePageDemo> createState() => _HomePageDemoState();
}

class _HomePageDemoState extends State<HomePageDemo> {
  @override
  Widget build(BuildContext context) {
    final counterModel = Provider.of<MyCounter>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed:',
            ),
            Text(
              "${counterModel.count}",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterModel.incrementCounter();
          if (counterModel.count % 7 == 0) {
            Navigator.of(context).pop();
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
