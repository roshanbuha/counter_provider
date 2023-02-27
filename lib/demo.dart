import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/home_page.dart';
import 'package:provider_demo/provider/counter_provider.dart';

class DemoPage extends StatefulWidget {
  const DemoPage({Key? key}) : super(key: key);

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
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
          children: [
            const Text(
              'You have pushed the button sevan times:',
            ),
            Text(
              '${counterModel.count}',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterModel.incrementCounter();
          if (counterModel.count % 7 == 0) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomePageDemo(),
              ),
            );
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
