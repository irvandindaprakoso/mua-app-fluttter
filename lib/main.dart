import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'register_page.dart';
import 'profile_user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
    RegisterPage.tag: (context) => RegisterPage(),
    ProfileUser.tag: (context) => ProfileUser(title: "Profile User",),
  };

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home:new LoginPage(),
      // home: RegisterPage(),
      routes: routes,
    );
  }
}