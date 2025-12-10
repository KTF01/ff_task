import 'package:ff_task/features/repositories/presentation/bloc/repositories_block.dart';
import 'package:ff_task/features/repositories/presentation/bloc/repositories_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CSearchBar extends StatelessWidget {
  CSearchBar({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RepositoriesBlock>();
    return SearchBar(
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      hintText: "Search Repositories",
      controller: _controller,
      onChanged: (value) {
        // Implement search logic here
      },
      trailing: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            bloc.add(GetRepositories(_controller.text));
          },
        ),
      ],
    );
  }
}
