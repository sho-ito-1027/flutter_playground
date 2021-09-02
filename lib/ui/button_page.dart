import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ボタンお試し'),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Container(
                constraints: BoxConstraints(maxHeight: constraints.maxHeight),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    //TODO:ボタン
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
