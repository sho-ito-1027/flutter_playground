import 'package:auto_route/auto_route.dart';
import 'package:flutter_playground/ui/playground.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute<void>>[
    AutoRoute(page: PlaygroundScreen, initial: true),
  ],
)
class $RootRouter {}
