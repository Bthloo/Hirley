part of 'get_fields_cubit.dart';

@immutable
sealed class GetFieldsState {}

final class GetFieldsInitial extends GetFieldsState {}
final class GetFieldsLoading extends GetFieldsState {}
final class GetFieldsSuccess extends GetFieldsState {
  final List<FieldEntity> fields;

  GetFieldsSuccess({required this.fields});
}
final class GetFieldsFailure extends GetFieldsState {
  final String message;
  GetFieldsFailure({required this.message});
}
