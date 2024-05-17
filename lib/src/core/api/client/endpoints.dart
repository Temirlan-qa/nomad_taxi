class EndPoints {
  // Auth
  static const refreshToken = "/auth/refresh";
  static const logout = "/auth/logout";
  static const login = "/auth/login";
  static const verify = "/auth/verify";
  static const resendCode = "/auth/resend-code";

  // User
  static const updateUserData = "/user";
  static const getLastAddresses = "/user/order/address-history";
  static const getCashbackInfo = "/user/cashback?town_id=1";
  static const updateFirebaseToken = "/user/fcm-token";
  static const updateLanguage = "/user/language";

  // Partner
  static const updatePartnerData = "/partner";
  static const partnerStatus = "/partner/toggle";

  // Order
  static const createOrder = "/order";
  static String updateOrder(String id) => '/order/$id';
  static String getOrder(String id) => '/order/$id';
  static String cancelOrder(String id) => '/order/$id';

  // Town
  static const findTownByLocation =
      "/town/by-location?lat=43.251251&lng=76.923180";

  // Faq
  static const getAvailableLanguages = "/language";
}
