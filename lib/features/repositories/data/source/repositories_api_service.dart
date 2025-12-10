import 'package:dio/dio.dart';
import 'package:ff_task/features/repositories/data/models/repository_model.dart';

class RepositoriesApiService {
  final Dio dio = Dio(
    BaseOptions(baseUrl: "https://api.github.com", headers: {"Accept": "application/json", "Content-type": "application/json"}),
  );
  Future<List<RepositoryModel>> fetchRepositories(String searchQuery) async {
    if (searchQuery.isEmpty) searchQuery = "''";
    final result = await dio.get("/search/repositories?q=$searchQuery");
    List<RepositoryModel> repositories = (result.data['items'] as List).map((e) => RepositoryModel.fromJson(e)).toList();
    return repositories;
  }
}
