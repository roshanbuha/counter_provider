import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/demo.dart';
import 'package:provider_demo/provider/counter_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MyCounter(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DemoPage(),
      ),
    );
  }
}
