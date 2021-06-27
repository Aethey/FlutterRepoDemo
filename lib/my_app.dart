import 'package:flutter_git_repo_demo/widgets/home/home_screnn.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'common/constants.dart';

/// use for DarkMode,not sync  with system
final DarkModeProvider = StateProvider((ref) => false);

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
