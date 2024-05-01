import 'package:chef_app/config.dart';
import 'package:chef_app/pages/login_page.dart';
import 'package:chef_app/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return config.get<SharedPreferences>().getString('token') != null ? MenuPage(): LoginPage();
      }));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 154, 12, 1),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage("images/Group 3359.png"))),
        ),
      ),
    );
  }
}
