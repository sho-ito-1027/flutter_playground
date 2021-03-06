import 'package:flutter/material.dart';

class Fruit {
  const Fruit({required this.name, required this.emoji});

  final String name;
  final String emoji;
}

// 'フルーツ'を変換して出てくるので以下、全てフルーツ
const List<Fruit> fruits = [
  Fruit(name: 'さくらんぼ', emoji: '🍒'),
  Fruit(name: 'りんご', emoji: '🍎'),
  Fruit(name: 'バナナ', emoji: '🍌'),
  Fruit(name: 'オレンジ', emoji: '🍊'),
  Fruit(name: 'ぶどう', emoji: '🍇'),
  Fruit(name: 'スイカ', emoji: '🍉'),
  Fruit(name: 'マンゴー', emoji: '🥭'),
  Fruit(name: '青リンゴ', emoji: '🍏'),
  Fruit(name: 'イチゴ', emoji: '🍓'),
  Fruit(name: 'レモン', emoji: '🍋'),
  Fruit(name: '桃', emoji: '🍑'),
  Fruit(name: '洋梨', emoji: '🍐'),
  Fruit(name: '栗', emoji: '🌰'),
  Fruit(name: 'キウイ', emoji: '🥝'),
  Fruit(name: 'パイナップル', emoji: '🍍'),
];

class FruitsListPage extends StatelessWidget {
  const FruitsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemBuilder: (_, index) {
          final fruit = fruits[index];

          return ListTile(
            leading: Text(
              fruit.emoji,
              style: const TextStyle(fontSize: 32.0),
            ),
            title: Text(
              fruit.name,
              style: const TextStyle(fontSize: 24.0),
            ),
          );
        },
        separatorBuilder: (_, __) => const Divider(height: 1.0),
        itemCount: fruits.length,
      ),
    );
  }
}
