abstract class StorageService {
  Future<void> setToken(String? token);
  Future<void> deleteToken();
  Future<void> setLanguageCode(String token);
  String? getToken();
  String? getRefreshToken();
  String? getLanguageCode();
  Future<void> clear();
  Future<void> init();
  Future<void> openBox();
  bool checkLoggedIn();
  bool get isLoggedIn;

  set isLoggedIn(bool status);
}
