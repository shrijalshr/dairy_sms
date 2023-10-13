// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'farmer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FarmerModel _$FarmerModelFromJson(Map<String, dynamic> json) {
  return _FarmerModel.fromJson(json);
}

/// @nodoc
mixin _$FarmerModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FarmerModelCopyWith<FarmerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FarmerModelCopyWith<$Res> {
  factory $FarmerModelCopyWith(
          FarmerModel value, $Res Function(FarmerModel) then) =
      _$FarmerModelCopyWithImpl<$Res, FarmerModel>;
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class _$FarmerModelCopyWithImpl<$Res, $Val extends FarmerModel>
    implements $FarmerModelCopyWith<$Res> {
  _$FarmerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FarmerModelImplCopyWith<$Res>
    implements $FarmerModelCopyWith<$Res> {
  factory _$$FarmerModelImplCopyWith(
          _$FarmerModelImpl value, $Res Function(_$FarmerModelImpl) then) =
      __$$FarmerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name});
}

/// @nodoc
class __$$FarmerModelImplCopyWithImpl<$Res>
    extends _$FarmerModelCopyWithImpl<$Res, _$FarmerModelImpl>
    implements _$$FarmerModelImplCopyWith<$Res> {
  __$$FarmerModelImplCopyWithImpl(
      _$FarmerModelImpl _value, $Res Function(_$FarmerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$FarmerModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FarmerModelImpl implements _FarmerModel {
  _$FarmerModelImpl({required this.id, required this.name});

  factory _$FarmerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FarmerModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'FarmerModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FarmerModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FarmerModelImplCopyWith<_$FarmerModelImpl> get copyWith =>
      __$$FarmerModelImplCopyWithImpl<_$FarmerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FarmerModelImplToJson(
      this,
    );
  }
}

abstract class _FarmerModel implements FarmerModel {
  factory _FarmerModel({required final String id, required final String name}) =
      _$FarmerModelImpl;

  factory _FarmerModel.fromJson(Map<String, dynamic> json) =
      _$FarmerModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$FarmerModelImplCopyWith<_$FarmerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
