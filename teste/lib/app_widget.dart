import 'package:flutter/material.dart';
import 'package:teste/app_controller.dart';
import 'package:teste/login_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: AppController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            brightness: AppController.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
            primarySwatch: Colors.red,
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.red, // Define a cor da AppBar
            ),
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage(),
          },
        );
      },
    );
  }
}
