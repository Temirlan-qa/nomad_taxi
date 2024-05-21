class SignInBody {
  final String phone;
  final String? userId;
  final String? code;

  SignInBody({required this.phone, this.userId, this.code});

  Map<String, dynamic> toMap() {
    return {
      'phone': phone,
      if (userId != null) 'user_id': userId,
      if (code != null) 'code': code,
    };
  }
}
