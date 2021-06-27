import 'package:flutter/material.dart';

class MyNoneWidget extends StatelessWidget {
  const MyNoneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        'null',
        style: Theme.of(context).textTheme.headline2,
      )),
    );
  }
}
