///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'auth.pb.dart' as $0;
export 'auth.pb.dart';

class AutherClient extends $grpc.Client {
  static final _$signUp = $grpc.ClientMethod<$0.SignUpRequest, $0.SignUpReply>(
      '/Auth.Auther/SignUp',
      ($0.SignUpRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SignUpReply.fromBuffer(value));
  static final _$signIn = $grpc.ClientMethod<$0.SignInRequest, $0.SignInReply>(
      '/Auth.Auther/SignIn',
      ($0.SignInRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SignInReply.fromBuffer(value));
  static final _$signOut = $grpc.ClientMethod<$0.Empty, $0.SignOutReply>(
      '/Auth.Auther/SignOut',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SignOutReply.fromBuffer(value));

  AutherClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.SignUpReply> signUp($0.SignUpRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$signUp, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SignInReply> signIn($0.SignInRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$signIn, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SignOutReply> signOut($0.Empty request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$signOut, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class AutherServiceBase extends $grpc.Service {
  $core.String get $name => 'Auth.Auther';

  AutherServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignUpRequest, $0.SignUpReply>(
        'SignUp',
        signUp_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignUpRequest.fromBuffer(value),
        ($0.SignUpReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignInRequest, $0.SignInReply>(
        'SignIn',
        signIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignInRequest.fromBuffer(value),
        ($0.SignInReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.SignOutReply>(
        'SignOut',
        signOut_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.SignOutReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.SignUpReply> signUp_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignUpRequest> request) async {
    return signUp(call, await request);
  }

  $async.Future<$0.SignInReply> signIn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignInRequest> request) async {
    return signIn(call, await request);
  }

  $async.Future<$0.SignOutReply> signOut_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return signOut(call, await request);
  }

  $async.Future<$0.SignUpReply> signUp(
      $grpc.ServiceCall call, $0.SignUpRequest request);
  $async.Future<$0.SignInReply> signIn(
      $grpc.ServiceCall call, $0.SignInRequest request);
  $async.Future<$0.SignOutReply> signOut(
      $grpc.ServiceCall call, $0.Empty request);
}
