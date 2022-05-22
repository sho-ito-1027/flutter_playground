import 'package:flutter/material.dart';

class DirtySafeAreaPage extends StatelessWidget {
  const DirtySafeAreaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numbers = [for (int i = 0; i < 20; i++) i];

    return Scaffold(
      appBar: AppBar(
        title: const Text('dirty safe area'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
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
