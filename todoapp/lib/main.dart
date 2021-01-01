import 'package:flutter/material.dart';
import 'package:todoapp/login.dart';
import 'login.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/login',
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => LoginPage(),
        '/about': (BuildContext context) => AboutMe(),
      },
    );
  }
}

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text("hello nice to meet u"),
    ));
  }
}
