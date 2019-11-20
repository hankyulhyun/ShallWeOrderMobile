import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:shall_we_order_mobile/src/generated/auth.pbgrpc.dart';
import 'package:shall_we_order_mobile/src/grpc_client.dart';

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

  Future<void> _signUp() async {
    var req = SignUpRequest()
      ..id = idTextFieldController.text
      ..password = passwordTextFieldController.text
      ..gender = SignUpRequest_Gender.Male;

    Map<String, String> meta = new Map();
    meta['Authorization'] = "Bearer " + GrpcClientSingleton().accessToken;

    final channel = new ClientChannel('127.0.0.1',
      port: 5003,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ));


    var client = AutherClient(channel,
      options: new CallOptions(metadata: meta),
    );

    var res = await client.signUp(req);
    print('Sign in return : ' + res.result.toString());
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
                onPressed: () async => _signUp(),
                child: Text('Sign Up'),
              ),
            ],
          )),
    );
  }
}
