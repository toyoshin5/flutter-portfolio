import 'package:flutter/material.dart';
import 'package:flutter_portfolio/styles/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

class LinkButton extends StatelessWidget {
  const LinkButton({
    super.key,
    required this.url,
    required this.faIcon,
    this.width,
    this.height,
    this.text,
  });

  final String url;
  final IconData faIcon;
  final double? width;
  final double? height;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Link(
      uri: Uri.parse(url),
      target: LinkTarget.blank,
      builder: (context, followLink) {
        return TextButton(
          onPressed: followLink,
          style: TextButton.styleFrom(
            foregroundColor: AppColors.label(context),
            backgroundColor: AppColors.grey(context),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: SizedBox(
            width: width,
            height: height,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(faIcon, size: 18),
                const SizedBox(width: 8),
                if (text != null)
                  Text(
                    text!,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
