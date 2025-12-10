import 'package:ff_task/features/repositories/presentation/pages/repository_detail_page.dart';
import 'package:ff_task/features/repositories/presentation/pages/repository_list_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: "/list",
  routes: [
    GoRoute(path: "/list", name: RepositoryListPage.routeName, builder: (context, state) => RepositoryListPage()),
    GoRoute(path: "/detail", name: RepositoryDetailPage.routeName, builder: (context, state) => RepositoryDetailPage(state.extra!)),
  ],
);
