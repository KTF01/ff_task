import 'package:ff_task/core/resource_state.dart';
import 'package:ff_task/features/repository_list/domain/usecases/get_repositories_list_usecase.dart';
import 'package:ff_task/features/repository_list/presentation/block/repositories_events.dart';
import 'package:ff_task/features/repository_list/presentation/block/repositories_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RepositoriesBlock extends Bloc<RepositoriesEvent, RepositoriesState> {
  final GetRepositoriesUseCase _getRepositoriesUseCase;
  RepositoriesBlock(this._getRepositoriesUseCase) : super(RepositoriesInit()) {
    on<GetRepositories>(getCharacters);
  }

  Future<void> getCharacters(GetRepositories event, Emitter<RepositoriesState> emit) async {
    emit(RepositoriesLoading());
    final dataResult = await _getRepositoriesUseCase.call(null);

    if (dataResult is DataSuccess) {
      emit(RepositoriesLoaded(repositories: dataResult.data ?? []));
    } else if (dataResult is DataFailed) {
      emit(RepositoriesError(dataResult.exception!.message));
    }
  }
}
