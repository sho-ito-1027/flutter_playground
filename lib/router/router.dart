import 'package:auto_route/auto_route.dart';
import 'package:flutter_playground/ui/accessibility/crash_semantics_page.dart';
import 'package:flutter_playground/ui/button/minimum_size_button_page.dart';
import 'package:flutter_playground/ui/button/text_button_icon_page.dart';
import 'package:flutter_playground/ui/fixed_footer/fixed_footer_page.dart';
import 'package:flutter_playground/ui/fixed_footer/modal_fixed_footer_page.dart';
import 'package:flutter_playground/ui/hooks_riverpod/temp_sample_page.dart';
import 'package:flutter_playground/ui/image/each_box_fix_page.dart';
import 'package:flutter_playground/ui/playground.dart';
import 'package:flutter_playground/ui/safe_area/dirty_safe_area_page.dart';
import 'package:flutter_playground/ui/safe_area/display_safe_area_with_bars_page.dart';
import 'package:flutter_playground/ui/safe_area/display_safe_area_without_bars_page.dart';
import 'package:flutter_playground/ui/safe_area/fruits_list_page.dart';
import 'package:flutter_playground/ui/safe_area/list_view_safe_area_page.dart';
import 'package:flutter_playground/ui/safe_area/safe_area_root_page.dart';
import 'package:flutter_playground/ui/safe_area/smart_safe_area_page.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute<void>>[
    AutoRoute(page: CrashSemanticsPage),
    AutoRoute(page: DirtySafeAreaPage, fullscreenDialog: true),
    AutoRoute(page: DisplaySafeAreaWithBarsPage, fullscreenDialog: true),
    AutoRoute(page: DisplaySafeAreaWithoutBarsPage, fullscreenDialog: true),
    AutoRoute(page: EachBoxFitPage),
    AutoRoute(page: FixedFooterPage),
    AutoRoute(page: FruitsListPage, fullscreenDialog: true),
    AutoRoute(page: ListViewSafeAreaPage, fullscreenDialog: true),
    AutoRoute(page: MinimumSizeButtonPage),
    AutoRoute(page: ModalFixedFooterPage),
    AutoRoute(page: PlaygroundPage, initial: true),
    AutoRoute(page: SafeAreaRootPage),
    AutoRoute(page: SmartSafeAreaPage, fullscreenDialog: true),
    AutoRoute(page: TempSamplePage),
    AutoRoute(page: TextButtonIconPage),
  ],
)
class $RootRouter {}
