import 'package:hive_flutter/hive_flutter.dart';

import 'storage_service.dart';

class StorageServiceImpl implements StorageService {
  // Singleton instance
  static final StorageServiceImpl _instance = StorageServiceImpl._internal();

  // Factory constructor to return the same instance
  factory StorageServiceImpl() {
    return _instance;
  }

  // Private constructor
  StorageServiceImpl._internal();

  static const String _tokenKey = 'TOKEN';
  static const String _refreshTokenKey = 'REFRESH_TOKEN';
  static const String _languageCode = 'LANGUAGE_CODE';

  late Box hiveBox;

  @override
  Future<void> setToken(String? token) async {
    await hiveBox.put(_tokenKey, token);
  }

  @override
  Future<void> setLanguageCode(String code) async {
    await hiveBox.put(_languageCode, code);
  }

  @override
  String? getToken() {
    return hiveBox.get(_tokenKey);
  }

  @override
  Future<void> deleteToken() async {
    await hiveBox.delete(_tokenKey);
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
    if (hiveBox.isOpen) {
      await hiveBox.clear();
    }
  }

  @override
  Future<void> init() async {
    await Hive.initFlutter();

    hiveBox = await Hive.openBox('isLoggedIn');
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
  bool get isLoggedIn => checkLoggedIn();
}
