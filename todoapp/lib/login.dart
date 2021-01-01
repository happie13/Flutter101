import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userNameController = TextEditingController();
  final _userPassController = TextEditingController();
  final user = 'admin';
  final pass = '123';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            image: DecorationImage(
              image: AssetImage('t.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.all(50),
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(100)),
                  TextField(
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Colors.white30),
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'User',
                    ),
                    controller: _userNameController,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                  ),
                  TextField(
                    style: TextStyle(fontWeight: FontWeight.w500),
                    decoration: InputDecoration(
                      filled: true,
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('login', style: TextStyle(fontSize: 20)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text("Username is $user and password is $pass"),
                  );
                });
          },
          tooltip: 'user credentials',
          child: Icon(Icons.help)),
    );
  }

  void onSubmitted(String user, String pass) {
    print(user + pass);
  }
}
