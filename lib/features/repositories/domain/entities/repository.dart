import 'package:equatable/equatable.dart';
import 'package:ff_task/features/repositories/domain/entities/owner.dart';

class RepositoryEntity extends Equatable {
  final int id;
  final String name;
  final String fullName;
  final OwnerEntity owner;
  final String description;
  final String htmlUrl;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int forksCount;

  const RepositoryEntity({
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

  @override
  List<Object?> get props => [id, name, fullName, owner, description, htmlUrl, createdAt, updatedAt, forksCount];
}
