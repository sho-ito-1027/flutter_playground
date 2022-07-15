import 'package:flutter/material.dart';

class SmartSafeAreaPage extends StatelessWidget {
  const SmartSafeAreaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numbers = [for (int i = 0; i < 20; i++) i];

    return Scaffold(
      appBar: AppBar(
        title: const Text('smart safe area'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: numbers
                .map(
                  (e) => ListTile(title: Text('$e')),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
