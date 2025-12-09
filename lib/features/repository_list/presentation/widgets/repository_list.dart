import 'package:ff_task/features/repository_list/presentation/block/repositories_block.dart';
import 'package:ff_task/features/repository_list/presentation/block/repositories_events.dart';
import 'package:ff_task/features/repository_list/presentation/block/repositories_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RepositoryList extends StatefulWidget {
  const RepositoryList({super.key});

  @override
  State<RepositoryList> createState() => _RepositoryListState();
}

class _RepositoryListState extends State<RepositoryList> {
  late RepositoriesBlock bloc;
  @override
  void initState() {
    // TODO: implement initState
    bloc = BlocProvider.of<RepositoriesBlock>(context);
    bloc.add(GetRepositories());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: BlocBuilder(
        bloc: bloc,
        builder: (BuildContext context, state) {
          if (state is RepositoriesLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is RepositoriesLoaded) {
            final repositories = state.repositories;
            if (repositories.isEmpty) {
              return const Center(child: Text('No repositories found with this search'));
            }
            return ListView.separated(
              itemCount: repositories.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final repo = repositories[index];
                return ListTile(title: Text(repo.name), subtitle: Text(repo.description), onTap: () {});
              },
            );
          } else if (state is RepositoriesError) {
            return Center(child: Text('Error: ${state.errorMessage}'));
          } else {
            return const Center(child: Text('No data available'));
          }
        },
      ),
    );
  }
}
