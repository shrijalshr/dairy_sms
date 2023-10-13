import 'package:freezed_annotation/freezed_annotation.dart';

part 'farmer_model.freezed.dart';
part 'farmer_model.g.dart';

@freezed
abstract class FarmerModel with _$FarmerModel {
  factory FarmerModel({
    required String id,
    required String name,
  }) = _FarmerModel;
  factory FarmerModel.fromJson(Map<String, dynamic> json) =>
      _$FarmerModelFromJson(json);
}
