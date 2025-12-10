import 'package:ff_task/core/data_state.dart';
import 'package:ff_task/core/usecase.dart';
import 'package:ff_task/features/repositories/domain/entities/repository.dart';
import 'package:ff_task/features/repositories/domain/repository/repository_repository.dart';

class GetRepositoriesUseCase implements UseCase<DataState<List<RepositoryEntity>>, String> {
  final IRepositoryRepository _repository;
  GetRepositoriesUseCase(this._repository);

  @override
  Future<DataState<List<RepositoryEntity>>> call(String searchQuery) {
    return _repository.getRepositories(searchQuery);
  }
}
