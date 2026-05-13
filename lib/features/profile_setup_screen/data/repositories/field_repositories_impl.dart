import 'package:dartz/dartz.dart';
import '../../../../core/failure.dart';
import '../../domain/entities/field_entity.dart';
import '../../domain/entities/specialization_entity.dart';
import '../../domain/repositories/field_repository.dart';
import '../data_source/fields_data_source.dart';

class FieldRepoImpl implements FieldRepo {
  final FieldDatasource datasource;

  FieldRepoImpl({required this.datasource});

  @override
  Future<Either<Failure, List<FieldEntity>>> getFields() async {
    try {
      final data = await datasource.getFields();

      final fields = data.keys
          .map((e) => FieldEntity(name: e))
          .toList();

      return Right(fields);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<SpecializationEntity>>> getSpecializations(
      String fieldName,
      ) async {
    try {
      final data = await datasource.getFields();

      final specs = (data[fieldName] ?? [])
          .map((e) => SpecializationEntity(name: e))
          .toList();

      return Right(specs);
    } catch (e) {
      return Left(Failure(message: e.toString()));
    }
  }
}