import 'package:equatable/equatable.dart';
import 'package:rick_and_morty/feature/domain/entities/person_entities.dart';

abstract class PersonState extends Equatable{
  const PersonState();
  @override
  List<Object?> get props => [];
}

class PersonEmpty extends PersonState {
  @override
  List<Object?> get props => [];
}

class PersonLoading extends PersonState {
  final List<PersonEntity> oldPersonsList;
  final bool isFirstFetch;
  PersonLoading(this.oldPersonsList, {this.isFirstFetch = false});
 @override
  List<Object?> get props => [oldPersonsList];
}

class PersonLoaded extends PersonState {
  final List<PersonEntity> personsList;
  const PersonLoaded(this.personsList);

  @override
  List<Object?> get props => super.props;
}

class PersonError extends PersonState {
  final String message;

  const PersonError({required this.message});

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}