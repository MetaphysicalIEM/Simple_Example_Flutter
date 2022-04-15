import 'package:appweb2022/Pages/ProfilePage.dart';
import 'package:appweb2022/Pages/ShopPage.dart';
import 'package:appweb2022/Pages/SignInPage.dart';
import 'package:appweb2022/Pages/SignUpPage.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white38,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          // ShopPage(),
          ProfilPage(
            name: 'Geese',
            email: 'geesejinx@gmail.com',
            password: '********',
            birthdate: '10/10/1903',
          ),
        ],
      ),
    );
  }
}
