import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shall_we_order_mobile/sign_up.dart';
import 'package:shall_we_order_mobile/src/generated/auth.pbgrpc.dart';
import 'package:shall_we_order_mobile/src/grpc_client.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final idTextFieldController = TextEditingController();
  final passwordTextFieldController = TextEditingController();

  bool _rememberMe = false;

  Future<void> _signIn() async {
    var client = AutherClient(GrpcClientSingleton().client);
    var req = SignInRequest()
      ..id = idTextFieldController.text
      ..password = passwordTextFieldController.text
      ..rememberMe = _rememberMe;

    var res = await client.signIn(req);
    print('Sign in return : ' + res.result.toString());
  }

  @override
  void dispose() {
    idTextFieldController.dispose();
    passwordTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In Page'),
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
            Checkbox(
              onChanged: (value) {
                setState(() {
                  _rememberMe = value;
                });
              },
              value: _rememberMe,
            ),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              color: Theme.of(context).primaryColor,
              onPressed: () async => _signIn(),
              child: Text('Sign In'),
            ),
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              color: Theme.of(context).primaryColor,
              onPressed: () {
                // TODO : Navigate to sign up page
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return SignUpPage();
                }));
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
