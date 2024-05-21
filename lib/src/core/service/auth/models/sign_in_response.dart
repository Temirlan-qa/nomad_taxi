class SignInResponse {
  final String status;
  final int userId;

  SignInResponse({required this.status, required this.userId});

  factory SignInResponse.fromMap(Map<String, dynamic> map) {
    return SignInResponse(
      status: map['status'],
      userId: map['data']['user_id'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'data': {
        'user_id': userId,
      },
    };
  }
}
