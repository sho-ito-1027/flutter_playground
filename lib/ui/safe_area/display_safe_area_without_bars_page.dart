import 'package:flutter/material.dart';

class DisplaySafeAreaWithoutBarsPage extends StatelessWidget {
  const DisplaySafeAreaWithoutBarsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: const Center(
            child: Text('Safe Area'),
          ),
        ),
      ),
    );
  }
}
