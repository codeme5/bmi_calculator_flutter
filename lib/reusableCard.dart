import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final void Function() whenTapped;
  ReusableCard(
      {required this.colour,
      this.cardChild =
          const SizedBox(height: double.infinity, width: double.infinity),
      void Function()? onPress})
      : whenTapped = onPress ?? (() => false);
  final Color colour;
  final Widget cardChild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: whenTapped,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
