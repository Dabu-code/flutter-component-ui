import 'package:component_ui/constants/constant.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = kSecondaryColor,
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.85),
    this.borderRadius = 10,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Color color;
  final EdgeInsets padding;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * .5),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
            side: BorderSide(color: color),
            padding: const EdgeInsets.only(
                top: kDefaultPadding * .9, bottom: kDefaultPadding * .9)),
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(color: color),
            )
          ],
        ),
      ),
    );
  }
}
