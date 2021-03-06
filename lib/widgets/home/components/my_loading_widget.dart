import 'package:flutter/material.dart';

// Loading widget
class MyLoadingWidget extends StatelessWidget {
  const MyLoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
