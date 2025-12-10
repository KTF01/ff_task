import 'package:ff_task/features/repositories/presentation/widgets/detail/description_area.dart';
import 'package:ff_task/features/repositories/presentation/widgets/detail/info_row.dart';
import 'package:ff_task/features/repositories/presentation/widgets/detail/link_button.dart';
import 'package:ff_task/features/repositories/presentation/widgets/detail/profile_header.dart';
import 'package:ff_task/features/repositories/data/models/repository_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RepositoryDetailPage extends StatelessWidget {
  static const String routeName = 'detail';

  const RepositoryDetailPage(this.repository, {super.key});

  final Object repository;

  @override
  Widget build(BuildContext context) {
    final RepositoryModel repo = repository as RepositoryModel;
    final Uri repoUrl = Uri.parse(repo.htmlUrl);
    final format = DateFormat('yyyy-MM-dd hh:mm');
    return Scaffold(
      appBar: AppBar(title: Text(repo.name)),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ProfileHeader(owner: repo.owner),
                const SizedBox(height: 16),
                DescriptionArea(description: repo.description),
                Divider(),
                InfoRow(label: "Forks", value: repo.forksCount.toString()),
                InfoRow(label: "Created", value: format.format(repo.createdAt)),
                InfoRow(label: "Last update", value: format.format(repo.updatedAt)),
                LinkButton(url: Uri.parse(repo.htmlUrl), label: 'Link: $repoUrl'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
