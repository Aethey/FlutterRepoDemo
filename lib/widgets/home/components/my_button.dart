import 'package:flutter/material.dart';

/// Modal　Button　
class MyButton extends StatelessWidget {
  final String title;
  final BuildContext context;
  final Function onPress;

  const MyButton({required this.context, required this.onPress, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            height: 56,
            child: Center(
                child: GestureDetector(
              onTap: () => onPress(),
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ))));
  }
}
