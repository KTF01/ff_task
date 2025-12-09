class Owner {
  final String login;
  final int id;
  final String avatarUrl;
  final String htmlUrl;

  Owner({required this.login, required this.id, required this.avatarUrl, required this.htmlUrl});

  factory Owner.fromJson(Map<String, dynamic> json) {
    return Owner(login: json['login'], id: json['id'], avatarUrl: json['avatar_url'], htmlUrl: json['html_url']);
  }

  Map<String, dynamic> toJson() {
    return {'login': login, 'id': id, 'avatar_url': avatarUrl, 'html_url': htmlUrl};
  }
}
