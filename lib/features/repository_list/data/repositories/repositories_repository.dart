import 'package:dio/dio.dart';
import 'package:ff_task/core/resource_state.dart';
import 'package:ff_task/features/repository_list/data/models/repository_model.dart';
import 'package:ff_task/features/repository_list/data/source/repositories_api_service.dart';

class RepositoriesRepository {
  final RepositoriesApiService _apiService;
  RepositoriesRepository(this._apiService);

  Future<ResourceState<List<RepositoryModel>>> getRepositories() async {
    try {
      final response = await _apiService.fetchRepositories();
      return DataSuccess(response);
    } on DioException catch (exception) {
      return DataFailed(exception);
    }
  }
}
