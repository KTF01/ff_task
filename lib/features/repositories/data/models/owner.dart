import 'package:ff_task/features/repositories/domain/entities/owner.dart';

class OwnerModel extends OwnerEntity {
  const OwnerModel({required super.login, required super.id, required super.avatarUrl, required super.htmlUrl});

  factory OwnerModel.fromJson(Map<String, dynamic> json) {
    return OwnerModel(login: json['login'], id: json['id'], avatarUrl: json['avatar_url'], htmlUrl: json['html_url']);
  }
}
