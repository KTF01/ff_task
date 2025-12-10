import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({super.key, required this.url, required this.label});

  final Uri url;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await launchUrl(url);
      },
      child: Text(label, style: const TextStyle(fontSize: 16)),
    );
  }
}
