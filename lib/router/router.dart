import 'package:auto_route/auto_route.dart';
import 'package:flutter_playground/ui/accessibility/crash_semantics_page.dart';
import 'package:flutter_playground/ui/button/minimum_size_button_page.dart';
import 'package:flutter_playground/ui/button/text_button_icon_page.dart';
import 'package:flutter_playground/ui/hooks_riverpod/temp_sample_page.dart';
import 'package:flutter_playground/ui/image/each_box_fix_page.dart';
import 'package:flutter_playground/ui/playground.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<void>>[
    AutoRoute(page: PlaygroundPage, initial: true),
    AutoRoute(page: MinimumSizeButtonPage),
    AutoRoute(page: TextButtonIconPage),
    AutoRoute(page: EachBoxFitPage),
    AutoRoute(page: CrashSemanticsPage),
    AutoRoute(page: TempSamplePage),
  ],
)
class $RootRouter {}
