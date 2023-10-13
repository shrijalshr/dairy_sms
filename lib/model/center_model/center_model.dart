import 'package:freezed_annotation/freezed_annotation.dart';

part 'center_model.freezed.dart';
part 'center_model.g.dart';

@freezed
class CenterModel with _$CenterModel {
  factory CenterModel({
    required int id,
    required String name,
  }) = _CenterModel;

  factory CenterModel.fromJson(Map<String, dynamic> json) =>
      _$CenterModelFromJson(json);
}
