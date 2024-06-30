import 'dart:convert';
import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';

import '../../../features/orders/domain/entities/order/order_entity.dart';
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
  static const String _currentOrderKey = 'CURRENT_ORDER';
  static const String _townIdKey = 'TOWN_ID';

  late Box hiveBox;

  @override
  Future<void> setToken(String? token) async {
    log('$token', name: 'ACCESS_TOKEN');
    await hiveBox.put(_tokenKey, token);
  }

  @override
  Future<void> setTownId(int id) async {
    await hiveBox.put(_townIdKey, id);
  }

  @override
  int? getTownId() {
    return hiveBox.get(_townIdKey);
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

  Future<void> saveOrder(OrderEntity order) async {
    await hiveBox.put(_currentOrderKey, jsonEncode(order.toJson()));
  }

  OrderEntity? loadOrder() {
    final orderJson = hiveBox.get(_currentOrderKey);
    if (orderJson != null) {
      return OrderEntity.fromJson(jsonDecode(orderJson));
    }
    return null;
  }

  Future<void> deleteOrder() async {
    await hiveBox.delete(_currentOrderKey);
  }
}
