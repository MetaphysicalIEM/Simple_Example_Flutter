import 'package:flutter/material.dart';
import 'package:simple_example/home_app.dart';

// https://blog.khophi.co/wp-content/uploads/2018/06/Screenshot_20180613-220644.png
// Random image took from web to create this page below

void main() {
  runApp(const MaterialApp(
    home: AppMain(),
  ));
}

class AppMain extends StatefulWidget {
  const AppMain({Key? key}) : super(key: key);

  @override
  State<AppMain> createState() => _AppMainState();
}

class _AppMainState extends State<AppMain> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: HomeApp(),
    );
  }
}
