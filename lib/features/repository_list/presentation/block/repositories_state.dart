import 'package:ff_task/features/repository_list/data/models/repository_model.dart';

abstract class RepositoriesState {}

class RepositoriesInit extends RepositoriesState {}

class RepositoriesLoading extends RepositoriesState {}

class RepositoriesLoaded extends RepositoriesState {
  List<RepositoryModel> repositories;
  RepositoriesLoaded({required this.repositories});
}

class RepositoriesError extends RepositoriesState {
  String? errorMessage;
  RepositoriesError(this.errorMessage);
}
