import 'package:flutter/material.dart';

class Jesus extends StatefulWidget {
  Jesus({Key? key}) : super(key: key);

  @override
  State<Jesus> createState() => _JesusState();
}

class _JesusState extends State<Jesus> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
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
        height: screenSizeY,
        color: Colors.white,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: screenSizeX * 0.12),
              const Center(child: LogoApp()),
              SizedBox(height: screenSizeX * 0.12),
              TextField(
                controller: _controllerEmail,
                keyboardType: TextInputType.phone,
                textAlign: TextAlign.left,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
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
              const SizedBox(height: 15),
              TextField(
                controller: _controllerPassword,
                keyboardType: TextInputType.visiblePassword,
                textAlign: TextAlign.left,
                obscureText: true,
                decoration: const InputDecoration(
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
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Center(
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
                    const Text('Forget password ?'),
                    InkWell(
                      onTap: () {
                        debugPrint('forget');
                      },
                      child: const Text(' No yawa. Tap me'),
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
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: const Center(
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
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: NetworkImage(
              'https://logowik.com/content/uploads/images/flutter5786.jpg'),
        ),
      ),
    );
  }
}
