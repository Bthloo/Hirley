import 'package:flutter_bloc/flutter_bloc.dart';

class FormSelectionState {
  final String? selectedField;
  final String? selectedSpecialization;
  final String? experience;

  FormSelectionState({
    this.selectedField,
    this.selectedSpecialization,
    this.experience,
  });

  FormSelectionState copyWith({
    String? selectedField,
    String? selectedSpecialization,
    String? experience,
    bool clearSpecialization = false,
  }) {
    return FormSelectionState(
      selectedField: selectedField ?? this.selectedField,
      selectedSpecialization: clearSpecialization ? null : (selectedSpecialization ?? this.selectedSpecialization),
      experience: experience ?? this.experience,
    );
  }
}

class FormSelectionCubit extends Cubit<FormSelectionState> {
  FormSelectionCubit() : super(FormSelectionState());

  void selectField(String field) {

    emit(state.copyWith(selectedField: field, clearSpecialization: true));
  }

  void selectSpecialization(String specialization) {
    emit(state.copyWith(selectedSpecialization: specialization));
  }

  void selectExperience(String experience) {
    emit(state.copyWith(experience: experience));
  }
}