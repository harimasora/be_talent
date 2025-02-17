// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employees_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EmployeesState {
  AsyncValue<List<Employee>> get employees =>
      throw _privateConstructorUsedError;
  String get filterSubject => throw _privateConstructorUsedError;

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EmployeesStateCopyWith<EmployeesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesStateCopyWith<$Res> {
  factory $EmployeesStateCopyWith(
          EmployeesState value, $Res Function(EmployeesState) then) =
      _$EmployeesStateCopyWithImpl<$Res, EmployeesState>;
  @useResult
  $Res call({AsyncValue<List<Employee>> employees, String filterSubject});
}

/// @nodoc
class _$EmployeesStateCopyWithImpl<$Res, $Val extends EmployeesState>
    implements $EmployeesStateCopyWith<$Res> {
  _$EmployeesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
    Object? filterSubject = null,
  }) {
    return _then(_value.copyWith(
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Employee>>,
      filterSubject: null == filterSubject
          ? _value.filterSubject
          : filterSubject // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeesStateImplCopyWith<$Res>
    implements $EmployeesStateCopyWith<$Res> {
  factory _$$EmployeesStateImplCopyWith(_$EmployeesStateImpl value,
          $Res Function(_$EmployeesStateImpl) then) =
      __$$EmployeesStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<List<Employee>> employees, String filterSubject});
}

/// @nodoc
class __$$EmployeesStateImplCopyWithImpl<$Res>
    extends _$EmployeesStateCopyWithImpl<$Res, _$EmployeesStateImpl>
    implements _$$EmployeesStateImplCopyWith<$Res> {
  __$$EmployeesStateImplCopyWithImpl(
      _$EmployeesStateImpl _value, $Res Function(_$EmployeesStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
    Object? filterSubject = null,
  }) {
    return _then(_$EmployeesStateImpl(
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as AsyncValue<List<Employee>>,
      filterSubject: null == filterSubject
          ? _value.filterSubject
          : filterSubject // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmployeesStateImpl extends _EmployeesState {
  const _$EmployeesStateImpl(
      {this.employees = const AsyncValue<List<Employee>>.loading(),
      this.filterSubject = ''})
      : super._();

  @override
  @JsonKey()
  final AsyncValue<List<Employee>> employees;
  @override
  @JsonKey()
  final String filterSubject;

  @override
  String toString() {
    return 'EmployeesState(employees: $employees, filterSubject: $filterSubject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeesStateImpl &&
            (identical(other.employees, employees) ||
                other.employees == employees) &&
            (identical(other.filterSubject, filterSubject) ||
                other.filterSubject == filterSubject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employees, filterSubject);

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeesStateImplCopyWith<_$EmployeesStateImpl> get copyWith =>
      __$$EmployeesStateImplCopyWithImpl<_$EmployeesStateImpl>(
          this, _$identity);
}

abstract class _EmployeesState extends EmployeesState {
  const factory _EmployeesState(
      {final AsyncValue<List<Employee>> employees,
      final String filterSubject}) = _$EmployeesStateImpl;
  const _EmployeesState._() : super._();

  @override
  AsyncValue<List<Employee>> get employees;
  @override
  String get filterSubject;

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeesStateImplCopyWith<_$EmployeesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
