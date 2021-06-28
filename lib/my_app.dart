import 'package:flutter_git_repo_demo/widgets/home/home_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, watch, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'FlutterRepoDemo',
          home: HomeScreen(),
        );
      },
    );
  }
}
