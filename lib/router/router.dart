import 'package:auto_route/auto_route.dart';
import 'package:flutter_playground/ui/accessibility/crash_semantics_page.dart';
import 'package:flutter_playground/ui/button/minimum_size_button_page.dart';
import 'package:flutter_playground/ui/button/text_button_icon_page.dart';
import 'package:flutter_playground/ui/fixed_footer/fixed_footer_page.dart';
import 'package:flutter_playground/ui/fixed_footer/modal_fixed_footer_page.dart';
import 'package:flutter_playground/ui/hooks_riverpod/temp_sample_page.dart';
import 'package:flutter_playground/ui/image/each_box_fix_page.dart';
import 'package:flutter_playground/ui/playground.dart';
import 'package:flutter_playground/ui/safe_area/smart_safe_area_page.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<void>>[
    AutoRoute(page: CrashSemanticsPage),
    AutoRoute(page: EachBoxFitPage),
    AutoRoute(page: FixedFooterPage),
    AutoRoute(page: MinimumSizeButtonPage),
    AutoRoute(page: ModalFixedFooterPage),
    AutoRoute(page: PlaygroundPage, initial: true),
    AutoRoute(page: SmartSafeAreaPage),
    AutoRoute(page: TempSamplePage),
    AutoRoute(page: TextButtonIconPage),
  ],
)
class $RootRouter {}
