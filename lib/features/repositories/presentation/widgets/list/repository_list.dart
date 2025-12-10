import 'package:ff_task/features/repositories/presentation/bloc/repositories_block.dart';
import 'package:ff_task/features/repositories/presentation/bloc/repositories_state.dart';
import 'package:ff_task/features/repositories/presentation/widgets/list/list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RepositoryList extends StatefulWidget {
  const RepositoryList({super.key});

  @override
  State<RepositoryList> createState() => _RepositoryListState();
}

class _RepositoryListState extends State<RepositoryList> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RepositoriesBlock>();
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
                return ListItem(repo);
              },
            );
          } else if (state is RepositoriesError) {
            return Center(
              child: Text('${state.errorMessage}', style: const TextStyle(color: Colors.red)),
            );
          } else {
            return const Center(child: Text('Use the search bar to find repositories.'));
          }
        },
      ),
    );
  }
}
