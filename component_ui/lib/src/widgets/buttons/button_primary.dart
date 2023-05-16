import 'package:component_ui/constants/constant.dart';
import 'package:flutter/material.dart';


class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.icon,
    this.color = kPrimaryColor,
    this.padding = const EdgeInsets.all(kDefaultPadding * 0.85),
    this.borderRadius = 10,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Color color;
  final EdgeInsets padding;
  final IconData? icon;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * .5),
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        padding: padding,
        color: color,
        minWidth: double.infinity,
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            if (icon != null) const SizedBox(width: 20),
            Text(text, style: const TextStyle(color: Colors.white)),
            if (icon != null) Icon(icon, color: Colors.white)
          ],
        ),
      ),
    );
  }
}