import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.color,
    required this.text,
    required this.textColor,
    required this.onPressed,
  });
  final Color color;
  final String text;
  final Color textColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CupertinoTheme(
        data: CupertinoThemeData(primaryColor: color),
        child: CupertinoButton.filled(
          padding: const EdgeInsets.symmetric(vertical: 19),
          borderRadius: BorderRadius.circular(11),
          onPressed: onPressed,
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: textColor,
                ),
          ),
        ),
      ),
    );
  }
}
