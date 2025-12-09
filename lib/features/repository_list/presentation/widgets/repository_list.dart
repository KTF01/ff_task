import 'package:ff_task/features/repository_detail/presentation/pages/repository_detail_page.dart';
import 'package:ff_task/features/repository_list/presentation/block/repositories_block.dart';
import 'package:ff_task/features/repository_list/presentation/block/repositories_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class RepositoryList extends StatefulWidget {
  const RepositoryList({super.key});

  @override
  State<RepositoryList> createState() => _RepositoryListState();
}

class _RepositoryListState extends State<RepositoryList> {
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RepositoriesBlock>();
    final f = DateFormat('yyyy-MM-dd');
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
                return ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(repo.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                      Text(f.format(repo.updatedAt)),
                    ],
                  ),
                  subtitle: Text(repo.description),
                  onTap: () {
                    context.pushNamed(RepositoryDetailPage.routeName, extra: repo);
                  },
                );
              },
            );
          } else if (state is RepositoriesError) {
            return Center(child: Text('Error: ${state.errorMessage}'));
          } else {
            return const Center(child: Text('Use the search bar to find repositories.'));
          }
        },
      ),
    );
  }
}
