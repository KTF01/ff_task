import 'package:ff_task/features/repositories/data/repositories/repositories_repository.dart';
import 'package:ff_task/features/repositories/data/source/repositories_api_service.dart';
import 'package:ff_task/features/repositories/domain/usecases/get_repositories_list_usecase.dart';
import 'package:ff_task/features/repositories/presentation/bloc/repositories_block.dart';
import 'package:ff_task/features/repositories/presentation/widgets/list/c_search_bar.dart';
import 'package:ff_task/features/repositories/presentation/widgets/list/repository_list.dart';
import 'package:ff_task/features/repositories/presentation/widgets/list/theme_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RepositoryListPage extends StatelessWidget {
  static const String routeName = 'list';

  const RepositoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RepositoriesBlock(GetRepositoriesUseCase(RepositoriesRepository(RepositoriesApiService()))),
      child: Scaffold(
        appBar: AppBar(title: const Text('Repository List'), actionsPadding: EdgeInsets.only(right: 8), actions: [ThemeSwitch()]),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [CSearchBar(), const SizedBox(height: 10), RepositoryList()]),
        ),
      ),
    );
  }
}
