import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../entities/field_entity.dart';
import '../entities/specialization_entity.dart';


abstract class FieldRepo {
  Future<Either<Failure, List<FieldEntity>>> getFields();

  Future<Either<Failure, List<SpecializationEntity>>> getSpecializations(String fieldName,);
}