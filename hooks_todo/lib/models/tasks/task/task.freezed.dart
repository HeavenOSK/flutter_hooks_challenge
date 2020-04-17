// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$TaskTearOff {
  const _$TaskTearOff();

  _Task call(
      {@required String body,
      bool completed = false,
      @nullable DateTime dueDate,
      @required DateTime createdAt}) {
    return _Task(
      body: body,
      completed: completed,
      dueDate: dueDate,
      createdAt: createdAt,
    );
  }
}

// ignore: unused_element
const $Task = _$TaskTearOff();

mixin _$Task {
  String get body;
  bool get completed;
  @nullable
  DateTime get dueDate;
  DateTime get createdAt;

  $TaskCopyWith<Task> get copyWith;
}

abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {String body,
      bool completed,
      @nullable DateTime dueDate,
      DateTime createdAt});
}

class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object body = freezed,
    Object completed = freezed,
    Object dueDate = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      body: body == freezed ? _value.body : body as String,
      completed: completed == freezed ? _value.completed : completed as bool,
      dueDate: dueDate == freezed ? _value.dueDate : dueDate as DateTime,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

abstract class _$TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$TaskCopyWith(_Task value, $Res Function(_Task) then) =
      __$TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {String body,
      bool completed,
      @nullable DateTime dueDate,
      DateTime createdAt});
}

class __$TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$TaskCopyWith<$Res> {
  __$TaskCopyWithImpl(_Task _value, $Res Function(_Task) _then)
      : super(_value, (v) => _then(v as _Task));

  @override
  _Task get _value => super._value as _Task;

  @override
  $Res call({
    Object body = freezed,
    Object completed = freezed,
    Object dueDate = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_Task(
      body: body == freezed ? _value.body : body as String,
      completed: completed == freezed ? _value.completed : completed as bool,
      dueDate: dueDate == freezed ? _value.dueDate : dueDate as DateTime,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

class _$_Task implements _Task {
  const _$_Task(
      {@required this.body,
      this.completed = false,
      @nullable this.dueDate,
      @required this.createdAt})
      : assert(body != null),
        assert(completed != null),
        assert(createdAt != null);

  @override
  final String body;
  @JsonKey(defaultValue: false)
  @override
  final bool completed;
  @override
  @nullable
  final DateTime dueDate;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Task(body: $body, completed: $completed, dueDate: $dueDate, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Task &&
            (identical(other.body, body) ||
                const DeepCollectionEquality().equals(other.body, body)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)) &&
            (identical(other.dueDate, dueDate) ||
                const DeepCollectionEquality()
                    .equals(other.dueDate, dueDate)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(body) ^
      const DeepCollectionEquality().hash(completed) ^
      const DeepCollectionEquality().hash(dueDate) ^
      const DeepCollectionEquality().hash(createdAt);

  @override
  _$TaskCopyWith<_Task> get copyWith =>
      __$TaskCopyWithImpl<_Task>(this, _$identity);
}

abstract class _Task implements Task {
  const factory _Task(
      {@required String body,
      bool completed,
      @nullable DateTime dueDate,
      @required DateTime createdAt}) = _$_Task;

  @override
  String get body;
  @override
  bool get completed;
  @override
  @nullable
  DateTime get dueDate;
  @override
  DateTime get createdAt;
  @override
  _$TaskCopyWith<_Task> get copyWith;
}
