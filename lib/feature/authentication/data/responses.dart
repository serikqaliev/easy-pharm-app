class VerifyResponse {
  late final String token;

  static VerifyResponse fromJson(Map<String, dynamic> json) => VerifyResponse()..token = json['token'] as String;
}

class SendCodeResponse {
  late final int userId;

  static SendCodeResponse fromJson(Map<String, dynamic> json) => SendCodeResponse()..userId = json['user_id'] as int;
}
