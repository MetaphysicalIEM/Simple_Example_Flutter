import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

// Why Flutter
// Flutter introduction
// Dart language ?
// Widget Widget ?
// Simple example Logo + TextField + Button
// Dio ?
// Pros and cons about flutter my point of vieuw

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: DioPage(),
    );
  }
}

// https://blog.khophi.co/wp-content/uploads/2018/06/Screenshot_20180613-220644.png

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

TextEditingController _controllerEmail = TextEditingController();
TextEditingController _controllerPassword = TextEditingController();

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    final double screenSizeX = MediaQuery.of(context).size.width;
    final double screenSizeY = MediaQuery.of(context).size.height;
    return Padding(
      padding:
          EdgeInsets.only(left: screenSizeX * 0.05, right: screenSizeX * 0.05),
      child: Container(
        width: screenSizeX,
        height: screenSizeY,
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: screenSizeX * 0.12),
              Center(
                child: LogoApp(),
              ),
              SizedBox(height: screenSizeX * 0.12),
              TextField(
                controller: _controllerEmail,
                keyboardType: TextInputType.phone,
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Phone Number',
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
                textAlign: TextAlign.left,
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
                  width: screenSizeX,
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
                  width: screenSizeX,
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
    );
  }
}

class LogoApp extends StatelessWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: NetworkImage(
              'https://logowik.com/content/uploads/images/flutter5786.jpg'),
        ),
      ),
    );
  }
}

Future<void> dioMethod(String url) async {
  debugPrint("GETTING DATA FROM FREE API");
  try {
    var response = await Dio().get(url);
    debugPrint(response.toString());
  } catch (e) {
    debugPrint(e.toString());
  }
}

class DioPage extends StatefulWidget {
  const DioPage({Key? key}) : super(key: key);

  @override
  State<DioPage> createState() => _DioPageState();
}

class _DioPageState extends State<DioPage> {
  final String _urlImage =
      'https://c.tenor.com/zly3ca4xjpEAAAAd/dio-dio-brando.gif';
  final String _urlImage2 = 'https://c.tenor.com/Y64dVcoMZ-4AAAAC/dio-jojo.gif';
  final String _urlImage3 =
      'https://i.pinimg.com/originals/44/03/f8/4403f8810a593202d3b5a44893ac3835.gif';
  final String _urlWeb = 'https://www.boredapi.com/api/activity';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(_urlImage))),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(_urlImage2))),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.25,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(_urlImage3))),
        ),
        TextButton(
            child: Text("DIO GET!!!!"),
            onPressed: () async {
              dioMethod(_urlWeb);
            }),
      ],
    );
  }
}
