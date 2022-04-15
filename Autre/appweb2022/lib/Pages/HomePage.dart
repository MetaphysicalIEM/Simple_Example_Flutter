import 'package:appweb2022/Widgets/DashBoard.dart';
import 'package:appweb2022/Widgets/SideBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SideBar(),
            ),
            Expanded(
              flex: 4,
              child: DashBoard(),
            ),
          ],
        ),
      ),
    );
  }
}
