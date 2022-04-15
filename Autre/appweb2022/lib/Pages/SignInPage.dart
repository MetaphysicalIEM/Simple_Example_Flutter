import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double screenSizeX = MediaQuery.of(context).size.width;
    final double screenSizeY = MediaQuery.of(context).size.height;
    return Padding(
      padding:
          EdgeInsets.only(left: screenSizeX * 0.05, right: screenSizeX * 0.05),
      child: Container(
        width: screenSizeX,
        height: screenSizeY * 0.85,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: screenSizeX * 0.05),
                Center(
                  child: LogoApp(
                    sizeX: screenSizeX * 0.2,
                    sizeY: screenSizeY * 0.2,
                  ),
                ),
                SizedBox(height: screenSizeX * 0.05),
                TextField(
                  controller: _controllerEmail,
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: _controllerPassword,
                  keyboardType: TextInputType.visiblePassword,
                  textAlign: TextAlign.center,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.black),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: screenSizeY * 0.075),
                InkWell(
                  onTap: () {
                    debugPrint('Log in');
                    debugPrint(_controllerEmail.text);
                    debugPrint(_controllerPassword.text);
                  },
                  child: Container(
                    width: screenSizeX * 0.1,
                    height: screenSizeY * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenSizeY * 0.015),
                Container(
                  color: Colors.white,
                  width: screenSizeX,
                  height: screenSizeY * 0.05,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('Forget password ?'),
                      InkWell(
                        onTap: () {
                          debugPrint('forget');
                        },
                        child: Text(' No yawa. Tap me'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: screenSizeY * 0.05),
                InkWell(
                  onTap: () {
                    debugPrint('Sign up');
                    debugPrint(_controllerEmail.text);
                    debugPrint(_controllerPassword.text);
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 15),
                    width: screenSizeX * 0.1,
                    height: screenSizeY * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Center(
                      child: Text('No account ? Sign up'),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}

class LogoApp extends StatelessWidget {
  final double sizeX;
  final double sizeY;
  const LogoApp({Key? key, required this.sizeX, required this.sizeY})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeX,
      height: sizeY,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage('assets/images/sidebar_image.png')),
      ),
    );
  }
}
