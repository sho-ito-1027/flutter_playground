import 'package:flutter/material.dart';
import 'package:flutter_playground/l10n/l10n.dart';
import 'package:flutter_playground/router/router.dart';

void main() {
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  AppRoot({Key? key}) : super(key: key);

  final _rootRouter = RootRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: L10n.localizationsDelegates,
      supportedLocales: L10n.supportedLocales,
      routeInformationParser: _rootRouter.defaultRouteParser(),
      routerDelegate: _rootRouter.delegate(),
    );
  }
}
