import 'package:flutter/material.dart';

import 'input_page.dart';

class BottomButton extends StatelessWidget {
  final Function()? onPress;
  final String text;
  BottomButton({required this.onPress, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
            child: Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        )),
        width: double.infinity,
        color: bottomContainerColor,
        height: bottomContainerHeight,
      ),
    );
  }
}
