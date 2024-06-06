import 'package:flutter/material.dart';
import 'package:fly_app/core/utils/styles/styles.dart';
import 'package:fly_app/features/main_page/presentation/main_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Styles.primaryColor),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
