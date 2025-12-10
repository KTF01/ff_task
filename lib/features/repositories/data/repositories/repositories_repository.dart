import 'package:dio/dio.dart';
import 'package:ff_task/core/data_state.dart';
import 'package:ff_task/features/repositories/data/models/repository_model.dart';
import 'package:ff_task/features/repositories/data/source/repositories_api_service.dart';
import 'package:ff_task/features/repositories/domain/repository/repository_repository.dart';

class RepositoriesRepository implements IRepositoryRepository {
  final RepositoriesApiService _apiService;
  RepositoriesRepository(this._apiService);

  @override
  Future<DataState<List<RepositoryModel>>> getRepositories(String searchQuery) async {
    try {
      final response = await _apiService.fetchRepositories(searchQuery);
      return DataSuccess(response);
    } on DioException catch (exception) {
      return DataFailed(exception);
    }
  }
}
