import 'package:appweb2022/Pages/MyCart.dart';
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: Colors.black87,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: const Text(
                'WEB5',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow),
              ),
            ),
            DrawerListTile(
              title: 'Home',
              icon: 'assets/images/menu_home.png',
              press: () {},
            ),
            DrawerListTile(
              title: 'Profil',
              icon: 'assets/images/menu_recruitment.png',
              press: () {},
            ),
            DrawerListTile(
              title: 'Buy',
              icon: 'assets/images/menu_onboarding.png',
              press: () {},
            ),
            DrawerListTile(
              title: 'About',
              icon: 'assets/images/menu_report.png',
              press: () {},
            ),
            DrawerListTile(
              title: 'Order',
              icon: 'assets/images/menu_calendar.png',
              press: () {},
            ),
            DrawerListTile(
              title: 'Settings',
              icon: 'assets/images/menu_settings.png',
              press: () {},
            ),
            const SizedBox(height: 20),
            Spacer(),
            Image.asset('assets/images/sidebar_image.png')
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final String icon;
  final VoidCallback press;
  final String title;

  const DrawerListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: Image.asset(
        icon,
        color: Colors.white,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
