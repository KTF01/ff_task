import 'package:ff_task/features/repositories/presentation/widgets/detail/link_button.dart';
import 'package:ff_task/features/repositories/data/models/owner.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.owner});
  final Owner owner;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 50, backgroundImage: NetworkImage(owner.avatarUrl)),
        const SizedBox(width: 16),
        Text(owner.login, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        LinkButton(url: Uri.parse(owner.htmlUrl), label: "Profile"),
      ],
    );
  }
}
