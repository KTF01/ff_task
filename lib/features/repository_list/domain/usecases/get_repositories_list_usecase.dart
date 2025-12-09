import 'package:ff_task/core/resource_state.dart';
import 'package:ff_task/core/usecase.dart';
import 'package:ff_task/features/repository_list/data/models/repository_model.dart';
import 'package:ff_task/features/repository_list/data/repositories/repositories_repository.dart';

class GetRepositoriesUseCase implements UseCase<ResourceState<List<RepositoryModel>>, void> {
  final RepositoriesRepository _repository;
  GetRepositoriesUseCase(this._repository);

  @override
  Future<ResourceState<List<RepositoryModel>>> call(void params) {
    return _repository.getRepositories();
  }
}
