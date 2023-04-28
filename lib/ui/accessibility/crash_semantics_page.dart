import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CrashSemanticsPage extends StatelessWidget {
  const CrashSemanticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crash Semantics Page'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _widget1(),
            _widget2(),
          ],
        ),
      ),
    );
  }

  Widget _widget1() {
    return MergeSemantics(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '利用規約',
              style: const TextStyle(
                color: Colors.blueAccent,
                decoration: TextDecoration.underline,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  //TODO: WebView表示
                  debugPrint('WebView表示');
                },
            ),
            const TextSpan(text: 'に同意する。'),
          ],
        ),
      ),
    );
  }

  Widget _widget2() {
    return MergeSemantics(
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              minimumSize: const Size(44, 44),
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              splashFactory: NoSplash.splashFactory,
            ),
            child: const Text(
              '利用規約',
              style: TextStyle(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const Text('に同意する。')
        ],
      ),
    );
  }
}
