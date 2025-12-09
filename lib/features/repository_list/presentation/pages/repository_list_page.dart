import 'package:ff_task/features/repository_list/data/repositories/repositories_repository.dart';
import 'package:ff_task/features/repository_list/data/source/repositories_api_service.dart';
import 'package:ff_task/features/repository_list/domain/usecases/get_repositories_list_usecase.dart';
import 'package:ff_task/features/repository_list/presentation/block/repositories_block.dart';
import 'package:ff_task/features/repository_list/presentation/widgets/repository_list.dart';
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
        appBar: AppBar(title: const Text('Repository List')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchBar(
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                hintText: "Search Repositories",
                onChanged: (value) {
                  // Implement search logic here
                },
                trailing: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Implement clear logic here
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              RepositoryList(),
            ],
          ),
        ),
      ),
    );
  }
}
