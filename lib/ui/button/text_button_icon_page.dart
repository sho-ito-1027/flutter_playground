import 'package:flutter/material.dart';

class TextButtonIconPage extends StatelessWidget {
  const TextButtonIconPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('text button icon'),
      ),
      body: Column(
        children: [
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.icecream),
            label: const Flexible(child: Text('アイスクリームアイコンのボタン')),
          ),
          const SizedBox(height: 16),
          WrapIconTextButton(
            onPressed: () {},
            icon: const Icon(Icons.icecream),
            text: const Text('アイスクリームアイコンのボタン'),
          ),
          const SizedBox(height: 16),
          IconTextButton(
            onPressed: () {},
            icon: const Icon(Icons.icecream),
            text: const Text('アイスクリームアイコンのボタン'),
          ),
        ],
      ),
    );
  }
}

class WrapIconTextButton extends StatelessWidget {
  const WrapIconTextButton({
    Key? key,
    this.onPressed,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Icon icon;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: icon,
      label: Flexible(child: text),
    );
  }
}

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    Key? key,
    this.onPressed,
    required this.icon,
    required this.text,
    this.margin = 8,
  }) : super(key: key);

  final VoidCallback? onPressed;
  final Icon icon;
  final Text text;
  final double margin;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          SizedBox(width: margin),
          Flexible(child: text),
        ],
      ),
    );
  }
}
