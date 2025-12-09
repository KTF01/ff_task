abstract class RepositoriesEvent {}

class GetRepositories extends RepositoriesEvent {
  String searchQuery;
  GetRepositories(this.searchQuery);
}
