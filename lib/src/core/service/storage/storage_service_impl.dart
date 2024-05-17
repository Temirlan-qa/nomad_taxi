import 'package:hive_flutter/hive_flutter.dart';

import 'storage_service.dart';

class StorageServiceImpl implements StorageService {
  // TODO: add singolton to this service
  static const String _tokenKey = 'TOKEN';
  static const String _refreshTokenKey = 'REFRESH_TOKEN';
  static const String _languageCode = 'LANGUAGE_CODE';

  late Box hiveBox;

  @override
  Future<void> setToken(String? token) async {
    await hiveBox.put(_tokenKey, token);
    // await hiveBox.put(_refreshTokenKey, refreshToken);
  }

  @override
  Future<void> setLanguageCode(String token) async {
    await hiveBox.put(_languageCode, token);
  }

  @override
  String? getToken() {
    return hiveBox.get(_tokenKey);
  }

  @override
  Future<void> deleteToken() {
    return hiveBox.delete(_tokenKey);
  }

  @override
  String? getRefreshToken() {
    return hiveBox.get(_refreshTokenKey);
  }

  @override
  String? getLanguageCode() {
    return hiveBox.get(_languageCode);
  }

  @override
  Future<void> clear() async {
    hiveBox.isOpen ? await hiveBox.clear() : null;
  }

  @override
  Future<void> init() async {
    await Hive.initFlutter();
  }

  @override
  Future<void> openBox() async {
    hiveBox = await Hive.openBox('isLoggedIn');
  }

  @override
  bool checkLoggedIn() {
    return getToken() != null;
  }

  @override
  bool isLoggedIn = false;
}
