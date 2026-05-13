part of 'get_specializations_cubit.dart';

@immutable
sealed class GetSpecializationsState {}

final class GetSpecializationsInitial extends GetSpecializationsState {}
final class GetSpecializationsLoading extends GetSpecializationsState {}
final class GetSpecializationsSuccess extends GetSpecializationsState {
  final List<SpecializationEntity> specializations;

  GetSpecializationsSuccess({required this.specializations});
}
final class GetSpecializationsFailure extends GetSpecializationsState {
  final String message;
  GetSpecializationsFailure({required this.message});
}