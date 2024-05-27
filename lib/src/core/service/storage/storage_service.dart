abstract class StorageService {
  Future<void> setToken(String? token);
  Future<void> setLanguageCode(String code);
  String? getToken();
  Future<void> deleteToken();
  String? getRefreshToken();
  String? getLanguageCode();
  Future<void> clear();
  Future<void> init();
  Future<void> openBox();
  bool checkLoggedIn();
  bool get isLoggedIn;
}
