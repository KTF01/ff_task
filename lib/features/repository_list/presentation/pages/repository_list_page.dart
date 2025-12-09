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
      body: Column(
        children: [
          Padding(
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
