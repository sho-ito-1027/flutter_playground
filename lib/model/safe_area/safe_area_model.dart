import 'package:auto_route/auto_route.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'safe_area_model.freezed.dart';

@freezed
class SafeAreaModel with _$SafeAreaModel {
  const factory SafeAreaModel({
    required String title,
    required PageRouteInfo routeInfo,
  }) = _SafeAreaModel;
}
