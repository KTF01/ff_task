import 'package:ff_task/features/repository_detail/presentation/pages/repository_detail_page.dart';
import 'package:ff_task/features/repository_list/data/models/repository_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ListItem extends StatelessWidget {
  const ListItem(this.repo, {super.key});

  final RepositoryModel repo;

  @override
  Widget build(BuildContext context) {
    final f = DateFormat('yyyy-MM-dd');
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(repo.name, style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          Text(f.format(repo.updatedAt)),
        ],
      ),
      subtitle: Text(repo.description),
      onTap: () {
        context.pushNamed(RepositoryDetailPage.routeName, extra: repo);
      },
    );
  }
}
