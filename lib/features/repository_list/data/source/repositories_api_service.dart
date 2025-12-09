import 'package:dio/dio.dart';
import 'package:ff_task/features/repository_list/data/models/repository_model.dart';

class RepositoriesApiService {
  final Dio dio = Dio(
    BaseOptions(baseUrl: "https://api.github.com", headers: {"Accept": "application/json", "Content-type": "application/json"}),
  );
  Future<List<RepositoryModel>> fetchRepositories() async {
    final result = await dio.get("/search/repositories?q=''");
    List<RepositoryModel> repositories = (result.data['items'] as List).map((e) => RepositoryModel.fromJson(e)).toList();
    print("REPOSITORIES: ${repositories.length}");

    return repositories;
  }
}
