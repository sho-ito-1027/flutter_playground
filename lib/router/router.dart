import 'package:auto_route/auto_route.dart';
import 'package:flutter_playground/ui/button_page.dart';
import 'package:flutter_playground/ui/playground.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<void>>[
    AutoRoute(page: PlaygroundPage, initial: true),
    AutoRoute(page: ButtonPage),
  ],
)
class $RootRouter {}
