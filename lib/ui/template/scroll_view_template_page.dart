import 'package:flutter/material.dart';

class ScrollViewTemplatePage extends StatelessWidget {
  const ScrollViewTemplatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('minimum size button'),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Container(
                constraints: BoxConstraints(maxHeight: constraints.maxHeight),
              ),
            );
          },
        ),
      ),
    );
  }
}
