// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SpecializationLoading value)?  specializationLoading,TResult Function( SpecializationSuccess value)?  specializationSuccess,TResult Function( SpecializationError value)?  specializationError,TResult Function( DoctorsSuccess value)?  doctorsSuccess,TResult Function( DoctorsError value)?  doctorsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationLoading() when specializationLoading != null:
return specializationLoading(_that);case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that);case SpecializationError() when specializationError != null:
return specializationError(_that);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that);case DoctorsError() when doctorsError != null:
return doctorsError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SpecializationLoading value)  specializationLoading,required TResult Function( SpecializationSuccess value)  specializationSuccess,required TResult Function( SpecializationError value)  specializationError,required TResult Function( DoctorsSuccess value)  doctorsSuccess,required TResult Function( DoctorsError value)  doctorsError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpecializationLoading():
return specializationLoading(_that);case SpecializationSuccess():
return specializationSuccess(_that);case SpecializationError():
return specializationError(_that);case DoctorsSuccess():
return doctorsSuccess(_that);case DoctorsError():
return doctorsError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SpecializationLoading value)?  specializationLoading,TResult? Function( SpecializationSuccess value)?  specializationSuccess,TResult? Function( SpecializationError value)?  specializationError,TResult? Function( DoctorsSuccess value)?  doctorsSuccess,TResult? Function( DoctorsError value)?  doctorsError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpecializationLoading() when specializationLoading != null:
return specializationLoading(_that);case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that);case SpecializationError() when specializationError != null:
return specializationError(_that);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that);case DoctorsError() when doctorsError != null:
return doctorsError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  specializationLoading,TResult Function( List<SpecializationsData?>? specializationsDataList)?  specializationSuccess,TResult Function( ApiErrorsModel apiErrorsModel)?  specializationError,TResult Function( List<Doctors?>? doctorsResponseModel)?  doctorsSuccess,TResult Function()?  doctorsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationLoading() when specializationLoading != null:
return specializationLoading();case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that.specializationsDataList);case SpecializationError() when specializationError != null:
return specializationError(_that.apiErrorsModel);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that.doctorsResponseModel);case DoctorsError() when doctorsError != null:
return doctorsError();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  specializationLoading,required TResult Function( List<SpecializationsData?>? specializationsDataList)  specializationSuccess,required TResult Function( ApiErrorsModel apiErrorsModel)  specializationError,required TResult Function( List<Doctors?>? doctorsResponseModel)  doctorsSuccess,required TResult Function()  doctorsError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpecializationLoading():
return specializationLoading();case SpecializationSuccess():
return specializationSuccess(_that.specializationsDataList);case SpecializationError():
return specializationError(_that.apiErrorsModel);case DoctorsSuccess():
return doctorsSuccess(_that.doctorsResponseModel);case DoctorsError():
return doctorsError();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  specializationLoading,TResult? Function( List<SpecializationsData?>? specializationsDataList)?  specializationSuccess,TResult? Function( ApiErrorsModel apiErrorsModel)?  specializationError,TResult? Function( List<Doctors?>? doctorsResponseModel)?  doctorsSuccess,TResult? Function()?  doctorsError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpecializationLoading() when specializationLoading != null:
return specializationLoading();case SpecializationSuccess() when specializationSuccess != null:
return specializationSuccess(_that.specializationsDataList);case SpecializationError() when specializationError != null:
return specializationError(_that.apiErrorsModel);case DoctorsSuccess() when doctorsSuccess != null:
return doctorsSuccess(_that.doctorsResponseModel);case DoctorsError() when doctorsError != null:
return doctorsError();case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class SpecializationLoading implements HomeState {
  const SpecializationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.specializationLoading()';
}


}




/// @nodoc


class SpecializationSuccess implements HomeState {
  const SpecializationSuccess(final  List<SpecializationsData?>? specializationsDataList): _specializationsDataList = specializationsDataList;
  

 final  List<SpecializationsData?>? _specializationsDataList;
 List<SpecializationsData?>? get specializationsDataList {
  final value = _specializationsDataList;
  if (value == null) return null;
  if (_specializationsDataList is EqualUnmodifiableListView) return _specializationsDataList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationSuccessCopyWith<SpecializationSuccess> get copyWith => _$SpecializationSuccessCopyWithImpl<SpecializationSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationSuccess&&const DeepCollectionEquality().equals(other._specializationsDataList, _specializationsDataList));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_specializationsDataList));

@override
String toString() {
  return 'HomeState.specializationSuccess(specializationsDataList: $specializationsDataList)';
}


}

/// @nodoc
abstract mixin class $SpecializationSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationSuccessCopyWith(SpecializationSuccess value, $Res Function(SpecializationSuccess) _then) = _$SpecializationSuccessCopyWithImpl;
@useResult
$Res call({
 List<SpecializationsData?>? specializationsDataList
});




}
/// @nodoc
class _$SpecializationSuccessCopyWithImpl<$Res>
    implements $SpecializationSuccessCopyWith<$Res> {
  _$SpecializationSuccessCopyWithImpl(this._self, this._then);

  final SpecializationSuccess _self;
  final $Res Function(SpecializationSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? specializationsDataList = freezed,}) {
  return _then(SpecializationSuccess(
freezed == specializationsDataList ? _self._specializationsDataList : specializationsDataList // ignore: cast_nullable_to_non_nullable
as List<SpecializationsData?>?,
  ));
}


}

/// @nodoc


class SpecializationError implements HomeState {
  const SpecializationError(this.apiErrorsModel);
  

 final  ApiErrorsModel apiErrorsModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecializationErrorCopyWith<SpecializationError> get copyWith => _$SpecializationErrorCopyWithImpl<SpecializationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecializationError&&(identical(other.apiErrorsModel, apiErrorsModel) || other.apiErrorsModel == apiErrorsModel));
}


@override
int get hashCode => Object.hash(runtimeType,apiErrorsModel);

@override
String toString() {
  return 'HomeState.specializationError(apiErrorsModel: $apiErrorsModel)';
}


}

/// @nodoc
abstract mixin class $SpecializationErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpecializationErrorCopyWith(SpecializationError value, $Res Function(SpecializationError) _then) = _$SpecializationErrorCopyWithImpl;
@useResult
$Res call({
 ApiErrorsModel apiErrorsModel
});




}
/// @nodoc
class _$SpecializationErrorCopyWithImpl<$Res>
    implements $SpecializationErrorCopyWith<$Res> {
  _$SpecializationErrorCopyWithImpl(this._self, this._then);

  final SpecializationError _self;
  final $Res Function(SpecializationError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? apiErrorsModel = null,}) {
  return _then(SpecializationError(
null == apiErrorsModel ? _self.apiErrorsModel : apiErrorsModel // ignore: cast_nullable_to_non_nullable
as ApiErrorsModel,
  ));
}


}

/// @nodoc


class DoctorsSuccess implements HomeState {
  const DoctorsSuccess(final  List<Doctors?>? doctorsResponseModel): _doctorsResponseModel = doctorsResponseModel;
  

 final  List<Doctors?>? _doctorsResponseModel;
 List<Doctors?>? get doctorsResponseModel {
  final value = _doctorsResponseModel;
  if (value == null) return null;
  if (_doctorsResponseModel is EqualUnmodifiableListView) return _doctorsResponseModel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DoctorsSuccessCopyWith<DoctorsSuccess> get copyWith => _$DoctorsSuccessCopyWithImpl<DoctorsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsSuccess&&const DeepCollectionEquality().equals(other._doctorsResponseModel, _doctorsResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_doctorsResponseModel));

@override
String toString() {
  return 'HomeState.doctorsSuccess(doctorsResponseModel: $doctorsResponseModel)';
}


}

/// @nodoc
abstract mixin class $DoctorsSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $DoctorsSuccessCopyWith(DoctorsSuccess value, $Res Function(DoctorsSuccess) _then) = _$DoctorsSuccessCopyWithImpl;
@useResult
$Res call({
 List<Doctors?>? doctorsResponseModel
});




}
/// @nodoc
class _$DoctorsSuccessCopyWithImpl<$Res>
    implements $DoctorsSuccessCopyWith<$Res> {
  _$DoctorsSuccessCopyWithImpl(this._self, this._then);

  final DoctorsSuccess _self;
  final $Res Function(DoctorsSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? doctorsResponseModel = freezed,}) {
  return _then(DoctorsSuccess(
freezed == doctorsResponseModel ? _self._doctorsResponseModel : doctorsResponseModel // ignore: cast_nullable_to_non_nullable
as List<Doctors?>?,
  ));
}


}

/// @nodoc


class DoctorsError implements HomeState {
  const DoctorsError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DoctorsError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.doctorsError()';
}


}




// dart format on
