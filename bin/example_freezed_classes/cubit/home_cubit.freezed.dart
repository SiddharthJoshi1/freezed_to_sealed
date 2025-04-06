// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
HomeState _$HomeStateFromJson(
  Map<String, dynamic> json
) {
    return _Initial.fromJson(
      json
    );
}

/// @nodoc
mixin _$HomeState {

 dynamic get homepageVariable1; double get homepageVariable2; String get homepageVariable3; bool get homepageVariable4; int get homepageVariable5; int get homepageVariable6;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  /// Serializes this HomeState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&const DeepCollectionEquality().equals(other.homepageVariable1, homepageVariable1)&&(identical(other.homepageVariable2, homepageVariable2) || other.homepageVariable2 == homepageVariable2)&&(identical(other.homepageVariable3, homepageVariable3) || other.homepageVariable3 == homepageVariable3)&&(identical(other.homepageVariable4, homepageVariable4) || other.homepageVariable4 == homepageVariable4)&&(identical(other.homepageVariable5, homepageVariable5) || other.homepageVariable5 == homepageVariable5)&&(identical(other.homepageVariable6, homepageVariable6) || other.homepageVariable6 == homepageVariable6));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(homepageVariable1),homepageVariable2,homepageVariable3,homepageVariable4,homepageVariable5,homepageVariable6);

@override
String toString() {
  return 'HomeState(homepageVariable1: $homepageVariable1, homepageVariable2: $homepageVariable2, homepageVariable3: $homepageVariable3, homepageVariable4: $homepageVariable4, homepageVariable5: $homepageVariable5, homepageVariable6: $homepageVariable6)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 dynamic homepageVariable1, double homepageVariable2, String homepageVariable3, bool homepageVariable4, int homepageVariable5, int homepageVariable6
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? homepageVariable1 = freezed,Object? homepageVariable2 = null,Object? homepageVariable3 = null,Object? homepageVariable4 = null,Object? homepageVariable5 = null,Object? homepageVariable6 = null,}) {
  return _then(_self.copyWith(
homepageVariable1: freezed == homepageVariable1 ? _self.homepageVariable1 : homepageVariable1 // ignore: cast_nullable_to_non_nullable
as dynamic,homepageVariable2: null == homepageVariable2 ? _self.homepageVariable2 : homepageVariable2 // ignore: cast_nullable_to_non_nullable
as double,homepageVariable3: null == homepageVariable3 ? _self.homepageVariable3 : homepageVariable3 // ignore: cast_nullable_to_non_nullable
as String,homepageVariable4: null == homepageVariable4 ? _self.homepageVariable4 : homepageVariable4 // ignore: cast_nullable_to_non_nullable
as bool,homepageVariable5: null == homepageVariable5 ? _self.homepageVariable5 : homepageVariable5 // ignore: cast_nullable_to_non_nullable
as int,homepageVariable6: null == homepageVariable6 ? _self.homepageVariable6 : homepageVariable6 // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Initial implements HomeState {
  const _Initial(this.homepageVariable1, this.homepageVariable2, this.homepageVariable3, this.homepageVariable4, this.homepageVariable5, {required this.homepageVariable6});
  factory _Initial.fromJson(Map<String, dynamic> json) => _$InitialFromJson(json);

@override final  dynamic homepageVariable1;
@override final  double homepageVariable2;
@override final  String homepageVariable3;
@override final  bool homepageVariable4;
@override final  int homepageVariable5;
@override final  int homepageVariable6;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InitialCopyWith<_Initial> get copyWith => __$InitialCopyWithImpl<_Initial>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InitialToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial&&const DeepCollectionEquality().equals(other.homepageVariable1, homepageVariable1)&&(identical(other.homepageVariable2, homepageVariable2) || other.homepageVariable2 == homepageVariable2)&&(identical(other.homepageVariable3, homepageVariable3) || other.homepageVariable3 == homepageVariable3)&&(identical(other.homepageVariable4, homepageVariable4) || other.homepageVariable4 == homepageVariable4)&&(identical(other.homepageVariable5, homepageVariable5) || other.homepageVariable5 == homepageVariable5)&&(identical(other.homepageVariable6, homepageVariable6) || other.homepageVariable6 == homepageVariable6));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(homepageVariable1),homepageVariable2,homepageVariable3,homepageVariable4,homepageVariable5,homepageVariable6);

@override
String toString() {
  return 'HomeState.initial(homepageVariable1: $homepageVariable1, homepageVariable2: $homepageVariable2, homepageVariable3: $homepageVariable3, homepageVariable4: $homepageVariable4, homepageVariable5: $homepageVariable5, homepageVariable6: $homepageVariable6)';
}


}

/// @nodoc
abstract mixin class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) _then) = __$InitialCopyWithImpl;
@override @useResult
$Res call({
 dynamic homepageVariable1, double homepageVariable2, String homepageVariable3, bool homepageVariable4, int homepageVariable5, int homepageVariable6
});




}
/// @nodoc
class __$InitialCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(this._self, this._then);

  final _Initial _self;
  final $Res Function(_Initial) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? homepageVariable1 = freezed,Object? homepageVariable2 = null,Object? homepageVariable3 = null,Object? homepageVariable4 = null,Object? homepageVariable5 = null,Object? homepageVariable6 = null,}) {
  return _then(_Initial(
freezed == homepageVariable1 ? _self.homepageVariable1 : homepageVariable1 // ignore: cast_nullable_to_non_nullable
as dynamic,null == homepageVariable2 ? _self.homepageVariable2 : homepageVariable2 // ignore: cast_nullable_to_non_nullable
as double,null == homepageVariable3 ? _self.homepageVariable3 : homepageVariable3 // ignore: cast_nullable_to_non_nullable
as String,null == homepageVariable4 ? _self.homepageVariable4 : homepageVariable4 // ignore: cast_nullable_to_non_nullable
as bool,null == homepageVariable5 ? _self.homepageVariable5 : homepageVariable5 // ignore: cast_nullable_to_non_nullable
as int,homepageVariable6: null == homepageVariable6 ? _self.homepageVariable6 : homepageVariable6 // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
