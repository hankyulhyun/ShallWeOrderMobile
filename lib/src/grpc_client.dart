import 'dart:convert';
import 'dart:io';

import 'package:grpc/grpc.dart';

class GrpcClientSingleton {
  ClientChannel insecureClient;
  String accessToken;

  static final GrpcClientSingleton _singleton =
      new GrpcClientSingleton._internal();

  factory GrpcClientSingleton() => _singleton;

  setToken(String token) => accessToken = token;

  GrpcClientSingleton._internal() {
    insecureClient = ClientChannel('localhost',
        port: 5003,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));
  }
}
