import 'package:flutter/material.dart';

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          //color: Color.fromRGBO(250, 154, 12, 1),
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/bg 1.png"))),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                width: 327,
                height: 174,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/image 47.png"))),
              ),
              SizedBox(
                child: Text(
                  "Welcome to Chef App",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              SizedBox(
                width: 330,
                height: 33,
                child: Center(
                  child: Text(
                    "Please choose your language ",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40,
                    width: 120,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(17, 17, 17, 1),
                      )),
                      onPressed: () {},
                      child: Text(
                        "English",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(17, 17, 17, 1),
                      )),
                      onPressed: () {},
                      child: Text(
                        "العربية",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 24),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
