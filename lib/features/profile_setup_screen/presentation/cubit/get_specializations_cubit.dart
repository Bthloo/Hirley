import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/specialization_entity.dart';
import '../../domain/repositories/field_repository.dart';

part 'get_specializations_state.dart';

class GetSpecializationsCubit extends Cubit<GetSpecializationsState> {
  final FieldRepo fieldRepo;
  GetSpecializationsCubit({required this.fieldRepo}) : super(GetSpecializationsInitial());
  List<SpecializationEntity> specializations = [];
  Future<void> getSpecializations(String fieldName) async {
    emit(GetSpecializationsLoading());

    final result = await fieldRepo.getSpecializations(fieldName);

    result.fold(
          (failure) {
        emit(GetSpecializationsFailure(message: failure.message));
      },
          (specializations) {
        this.specializations = specializations;
        emit(GetSpecializationsSuccess(specializations: specializations));
      },
    );
  }
}
