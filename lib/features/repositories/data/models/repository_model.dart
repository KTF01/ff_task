import 'package:ff_task/features/repositories/data/models/owner.dart';

class RepositoryModel {
  int id;
  String name;
  String fullName;
  Owner owner;
  String description;
  String htmlUrl;
  DateTime createdAt;
  DateTime updatedAt;
  int forksCount;

  RepositoryModel({
    required this.id,
    required this.name,
    required this.fullName,
    required this.owner,
    required this.description,
    required this.htmlUrl,
    required this.createdAt,
    required this.updatedAt,
    required this.forksCount,
  });

  factory RepositoryModel.fromJson(Map<String, dynamic> json) {
    return RepositoryModel(
      id: json['id'],
      name: json['name'],
      fullName: json['full_name'],
      owner: Owner.fromJson(json['owner']),
      description: json['description'] ?? '',
      htmlUrl: json['html_url'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      forksCount: json['forks_count'],
    );
  }
}
