import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_playground/l10n/l10n.dart';
import 'package:flutter_playground/router/router.dart';

class PlaygroundPage extends StatelessWidget {
  const PlaygroundPage({Key? key}) : super(key: key);

  static const _titleKey = 'titleKey';
  static const _routeKey = 'routeKey';
  final List<Map<String, Object>> items = const [
    {_titleKey: 'minimum size button', _routeKey: MinimumSizeButtonRoute()},
    {_titleKey: 'text button icon', _routeKey: TextButtonIconRoute()},
    {_titleKey: 'each box fit', _routeKey: EachBoxFitRoute()},
    {_titleKey: 'crash semantics', _routeKey: CrashSemanticsRoute()},
    {_titleKey: 'hooks riverpod sample', _routeKey: TempSampleRoute()},
    {_titleKey: 'fixed footer sample', _routeKey: FixedFooterRoute()},
    {
      _titleKey: 'modal fixed footer sample',
      _routeKey: ModalFixedFooterRoute()
    },
  ];

  @override
  Widget build(BuildContext context) {
    final l10n = L10n.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.helloWorld),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return _listTile(context, item: items[index]);
        },
      ),
    );
  }

  Widget _listTile(
    BuildContext context, {
    required Map<String, Object> item,
  }) {
    final title = item[_titleKey] as String;
    final route = item[_routeKey] as PageRouteInfo;

    return Column(
      children: [
        ListTile(
          title: Text(title),
          trailing: const Icon(Icons.keyboard_arrow_right),
          onTap: () => context.router.push(route),
        ),
        const Divider(height: 1),
      ],
    );
  }
}
