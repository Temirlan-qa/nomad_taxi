sealed class DomainException implements Exception {
  DomainException({
    required this.message,
    this.stackTrace,
  });
  String message;
  StackTrace? stackTrace;

  @override
  String toString() {
    String message = this.message;
    return 'Exception: $message';
  }
}

class UnknownException extends DomainException {
  UnknownException({String? message, StackTrace? stackTrace})
      : super(
          message: message ?? 'unknown Exception',
          stackTrace: stackTrace,
        );
}

class BadRequest extends DomainException {
  BadRequest({StackTrace? stackTrace})
      : super(message: 'bad Request', stackTrace: stackTrace);
}

class UnknownError extends DomainException {
  UnknownError() : super(message: 'unknown Error');
}

class NoInternetConnectionException extends DomainException {
  NoInternetConnectionException()
      : super(message: 'no Internet Connection Exception');
}

class MapperException extends DomainException {
  MapperException() : super(message: 'mapper Exception');
}

class NetworkException extends DomainException {
  NetworkException({required String message, StackTrace? stackTrace})
      : super(message: message, stackTrace: stackTrace);
}
