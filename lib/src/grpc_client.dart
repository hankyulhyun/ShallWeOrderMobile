import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:grpc/grpc.dart';

class GrpcClientSingleton {
  ClientChannel insecureClient;
  String _accessToken;
  String _refreshToken;

  FlutterSecureStorage _storage;

  static final GrpcClientSingleton _singleton =
      new GrpcClientSingleton._internal();

  factory GrpcClientSingleton() => _singleton;

  setAccessToken(String token) => _accessToken = token;

  setRefreshToken(String token) async {
    _refreshToken = token;
    await _storage.write(key: "refresh_token", value: _refreshToken);
  }

  GrpcClientSingleton._internal() {
    insecureClient = ClientChannel('localhost',
        port: 5003,
        options: ChannelOptions(
          credentials: ChannelCredentials.insecure(),
          idleTimeout: Duration(minutes: 1),
        ));

    _storage = new FlutterSecureStorage();
    _readRefreshToken();
  }

  CallOptions getCallOption() {
    // TODO : get access token when access token is null or near expired

    Map<String, String> meta = new Map();
    meta['Authorization'] = "Bearer " + _accessToken;
    return new CallOptions(metadata: meta);
  }

  Future<void> _readRefreshToken() async {
    _refreshToken = await _storage.read(key: "refresh_token");
  }
}
