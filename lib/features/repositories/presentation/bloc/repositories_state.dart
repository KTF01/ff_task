import 'package:ff_task/features/repositories/domain/entities/repository.dart';

abstract class RepositoriesState {}

class RepositoriesInit extends RepositoriesState {}

class RepositoriesLoading extends RepositoriesState {}

class RepositoriesLoaded extends RepositoriesState {
  List<RepositoryEntity> repositories;
  RepositoriesLoaded({required this.repositories});
}

class RepositoriesError extends RepositoriesState {
  String? errorMessage;
  RepositoriesError(this.errorMessage);
}
