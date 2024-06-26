class EndPoints {
  static const String baseUrl = 'https://auyltaxi.kz/api';
  // Auth
  static const refreshToken = "/v1/auth/refresh";
  static const logout = "/v1/auth/logout";
  static const login = "/v1/auth/login";
  static const verify = "/v1/auth/verify";
  static const resendCode = "/v1/auth/resend-code";
  static const getUserData = "/v1/auth/user";

  // User
  static const updateUserData = "/v1/user";
  static const getLastAddresses = "/v1/user/order/address-history";
  static const getCashbackInfo = "/v1/user/cashback?town_id=1";
  static const updateFirebaseToken = "/v1/user/fcm-token";
  static const updateLanguage = "/v1/user/language";

  // Partner
  static const updatePartnerData = "/v1/partner";
  static const partnerStatus = "/v1/partner/toggle";

  // Balance
  static const payInfo = "/v1/partner/balance/pay-info";
  static const withdrawInfo = "/v1/partner/balance/withdraw-info";

  // Order
  static const createOrder = "/v1/order";
  static String updateOrder(String id) => '/v1/order/$id';
  static String getOrder(String id) => '/v1/order/$id';
  static String cancelOrder(String id) => '/v1/order/$id';

  // Town
  static String findTownByLocation(
          {required double lat, required double lng}) =>
      "/v1/town/by-location?lat=$lat&lng=$lng";

  // Faq
  static const String getAvailableLanguages = "/v1/language";
  static const String getFaq = "/v1/faq?town_id=2";

  // Order search
  static const String getOrderSearch = '/v1/user/order/address-history';
}
