import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../domain/entities/field_entity.dart';
import '../../domain/repositories/field_repository.dart';

part 'get_fields_state.dart';

class GetFieldsCubit extends Cubit<GetFieldsState> {
  final FieldRepo fieldRepo;
  GetFieldsCubit({required this.fieldRepo}) : super(GetFieldsInitial());
  List<FieldEntity> fields = [];
  Future<void> getFields() async {
    emit(GetFieldsLoading());

    final result = await fieldRepo.getFields();

    result.fold(
          (failure) {
        emit(GetFieldsFailure(message: failure.message));
      },
          (fields) {
        fields = fields;
        emit(GetFieldsSuccess(fields: fields));
      },
    );
  }

}
