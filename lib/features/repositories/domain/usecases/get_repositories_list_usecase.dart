import 'package:ff_task/core/data_state.dart';
import 'package:ff_task/core/usecase.dart';
import 'package:ff_task/features/repositories/data/models/repository_model.dart';
import 'package:ff_task/features/repositories/data/repositories/repositories_repository.dart';

class GetRepositoriesUseCase implements UseCase<DataState<List<RepositoryModel>>, String> {
  final RepositoriesRepository _repository;
  GetRepositoriesUseCase(this._repository);

  @override
  Future<DataState<List<RepositoryModel>>> call(String searchQuery) {
    return _repository.getRepositories(searchQuery);
  }
}
