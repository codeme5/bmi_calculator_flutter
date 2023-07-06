import 'package:flutter/material.dart';

class IconCardContent extends StatelessWidget {
  const IconCardContent(
      {required this.defIconColor, required this.myIcon, required this.text});
  final IconData myIcon;
  final Color defIconColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myIcon,
          color: defIconColor,
          size: 80,
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
