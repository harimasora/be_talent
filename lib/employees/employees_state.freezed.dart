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

EmployeesState _$EmployeesStateFromJson(Map<String, dynamic> json) {
  return _EmployeesState.fromJson(json);
}

/// @nodoc
mixin _$EmployeesState {
  List<Employee> get employees => throw _privateConstructorUsedError;

  /// Serializes this EmployeesState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

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
  $Res call({List<Employee> employees});
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
  }) {
    return _then(_value.copyWith(
      employees: null == employees
          ? _value.employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
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
  $Res call({List<Employee> employees});
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
  }) {
    return _then(_$EmployeesStateImpl(
      employees: null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Employee>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmployeesStateImpl implements _EmployeesState {
  const _$EmployeesStateImpl({required final List<Employee> employees})
      : _employees = employees;

  factory _$EmployeesStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$EmployeesStateImplFromJson(json);

  final List<Employee> _employees;
  @override
  List<Employee> get employees {
    if (_employees is EqualUnmodifiableListView) return _employees;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString() {
    return 'EmployeesState(employees: $employees)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeesStateImpl &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeesStateImplCopyWith<_$EmployeesStateImpl> get copyWith =>
      __$$EmployeesStateImplCopyWithImpl<_$EmployeesStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EmployeesStateImplToJson(
      this,
    );
  }
}

abstract class _EmployeesState implements EmployeesState {
  const factory _EmployeesState({required final List<Employee> employees}) =
      _$EmployeesStateImpl;

  factory _EmployeesState.fromJson(Map<String, dynamic> json) =
      _$EmployeesStateImpl.fromJson;

  @override
  List<Employee> get employees;

  /// Create a copy of EmployeesState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EmployeesStateImplCopyWith<_$EmployeesStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
