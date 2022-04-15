import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  final String name;
  final String email;
  final String password;
  final String birthdate;
  const ProfilPage(
      {Key? key,
      required this.name,
      required this.email,
      required this.password,
      required this.birthdate})
      : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    final double screenSizeX = MediaQuery.of(context).size.width;
    final double screenSizeY = MediaQuery.of(context).size.height;
    return SizedBox(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.white,
              width: screenSizeX,
              height: screenSizeY * 0.75,
              child: SingleChildScrollView(child: _buildProfil(screenSizeY)),
            ),
          ]),
    );
  }

  Widget _buildProfil(double y) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: _buildSpecialText('Prénom :\n\n', widget.name),
          ),
          Divider(
            color: Colors.black,
            thickness: 1.0,
          ),
          SizedBox(height: y * 0.1),
          Container(
            color: Colors.white,
            child:
                _buildSpecialText('Date de naissance :\n\n', widget.birthdate),
          ),
          Divider(
            color: Colors.black,
            thickness: 1.0,
          ),
          SizedBox(height: y * 0.1),
          Container(
            color: Colors.white,
            child: _buildSpecialText('Email : \n\n', widget.email),
          ),
          Divider(
            color: Colors.black,
            thickness: 1.0,
          ),
          SizedBox(height: y * 0.1),
          SelectableText.rich(
            TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 14),
              text: 'Ces informations ne sont pas modifiables contactez-nous: ',
              children: <TextSpan>[
                TextSpan(
                  text: 'contact@web5.fr',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: y * 0.1),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {});
              },
              child: const Text(
                'Suppression compte',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialText(final String firstStr, final String secondStr) {
    return RichText(
      text: TextSpan(
        text: firstStr,
        style: TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        children: <TextSpan>[
          TextSpan(
            text: secondStr,
            style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
