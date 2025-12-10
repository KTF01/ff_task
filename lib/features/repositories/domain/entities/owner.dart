import 'package:equatable/equatable.dart';

class OwnerEntity extends Equatable {
  final String login;
  final int id;
  final String avatarUrl;
  final String htmlUrl;

  const OwnerEntity({required this.login, required this.id, required this.avatarUrl, required this.htmlUrl});

  @override
  List<Object?> get props => [login, id, avatarUrl, htmlUrl];
}
