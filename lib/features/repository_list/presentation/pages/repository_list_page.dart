import 'package:ff_task/core/router_config.dart';
import 'package:ff_task/features/repository_detail/presentation/repository_detail_page.dart';
import 'package:flutter/material.dart';

class RepositoryListPage extends StatelessWidget {
  static const String routeName = 'list';

  const RepositoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Repository List')),
      body: Center(
        child: Column(
          children: [
            const Text('This is the Repository List Page'),
            ElevatedButton(
              onPressed: () {
                router.pushNamed(RepositoryDetailPage.routeName);
              },
              child: Text('Go to Detail Page'),
            ),
          ],
        ),
      ),
    );
  }
}
