import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final idTextFieldController = TextEditingController();
  final passwordTextFieldController = TextEditingController();
  final passwordRepeatTextFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // TODO : Add listener here
  }

  @override
  void dispose() {
    idTextFieldController.dispose();
    passwordTextFieldController.dispose();
    passwordRepeatTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up Page'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: idTextFieldController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'ID',
                ),
              ),
              Divider(),
              TextField(
                obscureText: true,
                controller: passwordTextFieldController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              Divider(),
              TextField(
                obscureText: true,
                controller: passwordRepeatTextFieldController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Repeat Password',
                ),
              ),
              Divider(),
              MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                color: Theme.of(context).primaryColor,
                onPressed: () {
                  // TODO : Sign in logic here
                  print('Submitted ID : ${idTextFieldController.text}');
                },
                child: Text('Sign In'),
              ),
            ],
          )),
    );
  }
}
