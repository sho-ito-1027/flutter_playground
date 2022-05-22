import 'package:flutter/material.dart';

class ListViewSafeAreaPage extends StatelessWidget {
  const ListViewSafeAreaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numbers = [for (int i = 0; i < 20; i++) i];

    return Scaffold(
      appBar: AppBar(
        title: const Text('list view safe area'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          final number = numbers[index];

          return ListTile(
            title: Text('$number'),
          );
        },
      ),
    );
  }
}
