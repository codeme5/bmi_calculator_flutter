import 'package:flutter/material.dart';

import 'input_page.dart';

class RoundIconButton extends StatelessWidget {
  final void Function() whenTapped;
  RoundIconButton(
      {required this.thisColor, required this.icon, void Function()? onPress})
      : whenTapped = onPress ?? (() => false);
  final Color thisColor;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: whenTapped,
      shape: CircleBorder(),
      constraints: BoxConstraints(minWidth: 48, minHeight: 48),
      fillColor: thisColor,
      child: Icon(
        icon,
        color: defIconColor,
      ),
    );
  }
}
