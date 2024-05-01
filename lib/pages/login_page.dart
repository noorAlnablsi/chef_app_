import 'package:chef_app/config.dart';
import 'package:chef_app/model/user_model.dart';
import 'package:chef_app/pages/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../service/login_service.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController email = TextEditingController();
  

  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 375,
            height: 222,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background_image 1.png"),
              ),
            ),
            child: Center(
              child: Text(
                "Welcome Back",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 32,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
// width: 332.2,
// height: 152,
              child: Column(
                children: [
                  TextField(
                    controller: email,
// obscureText: true,
                    decoration: InputDecoration(
                      label: Text(
                        "E-mail",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(157, 159, 160, 1)),
                      ),
                      hintText: "Enter your email",
// border: InputBorder.none,
// prefix: Icon(Icons.phone),
// suffix: Icon(Icons.visibility),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffix: Icon(Icons.visibility_off),
                        label: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(157, 159, 160, 1),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "forget password ?",
              style: TextStyle(
                  color: Color.fromRGBO(157, 159, 160, 1),
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: 55,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(250, 154, 12, 1),
                borderRadius: BorderRadius.circular(50.0),
              ),
              width: 333,
              height: 47,
              child: FilledButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromRGBO(250, 154, 12, 1),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
                onPressed: () async {
                  var temp = await login(
                      UserModel(email: email.text, password: password.text));
                  if (temp is String) {
                    config.get<SharedPreferences>().setString('token', temp);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MenuPage();
                    }));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(new SnackBar(content: Text("Failed")));
                  }

                  if (temp is String) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MenuPage();
                    }));
                  } else {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(new SnackBar(content: Text("Failed")));
                  }
                },
                child: Text(
                  "Sign in",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                Text(
                  "Don’t have an account? ",
                  style: TextStyle(
                    color: Color.fromRGBO(125, 143, 171, 1),
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
