import 'package:chef_app/config.dart';
import 'package:chef_app/pages/Splash.dart';
import 'package:chef_app/pages/change_Lang.dart';
import 'package:chef_app/pages/login_page.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // config.get<SharedPreferences>().clear();
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}
