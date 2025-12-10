import 'package:ff_task/core/data_state.dart';
import 'package:ff_task/features/repositories/domain/entities/repository.dart';

abstract class IRepositoryRepository {
  Future<DataState<List<RepositoryEntity>>> getRepositories(String searchQuery);
}
