import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/core/usecases/usecase.dart';
import 'package:rick_and_morty/feature/domain/repositories/person_repository.dart';
import '../../../core/error/failure.dart';
import '../entities/person_entities.dart';

class GetAllPersons extends UseCase<List<PersonEntity>, PagePersonParams>{
  final PersonRepository personRepository;
  GetAllPersons(this.personRepository);
  @override
  Future<Either<Failure, List<PersonEntity>>> call(PagePersonParams params) async {
    return await personRepository.getAllPerson(params.page);
  }
}

class PagePersonParams extends Equatable {
  final int page;
  const PagePersonParams({required this.page});

  @override
  List<Object?> get props => throw UnimplementedError();
}