import 'package:cv_template/config/theme.dart';
import 'package:cv_template/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'package:syntax_highlight/syntax_highlight.dart';

class App extends StatelessWidget {
  const App({super.key, required this.theme});
  final HighlighterTheme theme;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: darkTheme,
      home: MainScreen(theme: theme),
    );
  }
}
