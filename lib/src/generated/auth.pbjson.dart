///
//  Generated code. Do not modify.
//  source: auth.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const SignUpRequest$json = const {
  '1': 'SignUpRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'gender', '3': 4, '4': 1, '5': 14, '6': '.Auth.SignUpRequest.Gender', '10': 'gender'},
  ],
  '4': const [SignUpRequest_Gender$json],
};

const SignUpRequest_Gender$json = const {
  '1': 'Gender',
  '2': const [
    const {'1': 'Male', '2': 0},
    const {'1': 'Female', '2': 1},
  ],
};

const SignUpReply$json = const {
  '1': 'SignUpReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 5, '10': 'result'},
  ],
};

const SignInRequest$json = const {
  '1': 'SignInRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'remember_me', '3': 3, '4': 1, '5': 8, '10': 'rememberMe'},
  ],
};

const SignInReply$json = const {
  '1': 'SignInReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 5, '10': 'result'},
    const {'1': 'access_token', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

const SignOutReply$json = const {
  '1': 'SignOutReply',
  '2': const [
    const {'1': 'result', '3': 1, '4': 1, '5': 5, '10': 'result'},
  ],
};

const Empty$json = const {
  '1': 'Empty',
};

