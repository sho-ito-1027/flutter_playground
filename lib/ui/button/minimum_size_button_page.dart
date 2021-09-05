import 'package:flutter/material.dart';

class MinimumSizeButtonPage extends StatelessWidget {
  const MinimumSizeButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('minimum size button'),
      ),
      body: Center(
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(44.0, 44.0),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {},
          child: const Text(
            'ボタン',
          ),
        ),
      ),
    );
  }
}
