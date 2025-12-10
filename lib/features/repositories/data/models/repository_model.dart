import 'package:ff_task/features/repositories/data/models/owner.dart';
import 'package:ff_task/features/repositories/domain/entities/repository.dart';

class RepositoryModel extends RepositoryEntity {
  const RepositoryModel({
    required super.id,
    required super.name,
    required super.fullName,
    required OwnerModel super.owner,
    required super.description,
    required super.htmlUrl,
    required super.createdAt,
    required super.updatedAt,
    required super.forksCount,
  });

  factory RepositoryModel.fromJson(Map<String, dynamic> json) {
    return RepositoryModel(
      id: json['id'],
      name: json['name'],
      fullName: json['full_name'],
      owner: OwnerModel.fromJson(json['owner']),
      description: json['description'] ?? '',
      htmlUrl: json['html_url'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
      forksCount: json['forks_count'],
    );
  }
}
