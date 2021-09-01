import 'package:flutter/material.dart';

class PlaygroundScreen extends StatelessWidget {
  const PlaygroundScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('playground'),
      ),
      body: ListView(
        children: const [
          Text('テスト'),
        ],
      ),
    );
  }
}
