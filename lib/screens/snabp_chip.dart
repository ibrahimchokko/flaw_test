import 'package:flutter/material.dart';

class SnabpChip extends StatelessWidget {
  final Color? color;
  final String text;

  const SnabpChip({super.key, this.color, required this.text,
  });

  @override
  Widget build(BuildContext context) {

    final chipColor = color ?? Theme.of(context).primaryColor;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: chipColor.withValues(alpha: 0.25),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: chipColor,
          fontSize: 14.0,
          fontWeight: FontWeight.bold, 
        ),
      ),
    );
  }
}


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnabpChip Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue, 
      ),
      home: const SnabpChipDemoPage(),
    );
  }
}

class SnabpChipDemoPage extends StatelessWidget {
  const SnabpChipDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnabpChip Widget Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SnabpChip(
              text: 'Default Color',
            ),
            const SizedBox(height: 16), 

            const SnabpChip(
              color: Colors.red,
              text: 'Custom Red',
            ),
            const SizedBox(height: 16),

            const SnabpChip(
              color: Colors.green,
              text: 'Custom Green',
            ),
            const SizedBox(height: 16),

            const SnabpChip(
              color: Colors.orange,
              text: 'Warning!',
            ),
          ],
        ),
      ),
    );
  }
}