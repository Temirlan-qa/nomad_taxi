class ApiConstants {
  static const apiKey = "95d590c0-0009-4a41-bfde-598e58c3cbb3";
  static const mapStyle = "https://auyltaxi.kz/mapfiles/styles/light.json";

  static const baseUrl = "https://auyltaxi.kz/api/v1";

  // Auth
  static const refreshToken = "/auth/refresh";
  static const logout = "/auth/logout";
  static const login = "/auth/login";
  static const verify = "/auth/verify";
  static const resendCode = "/auth/resend-code";

  // User
  static const getLastAddresses = "/user/order/address-history";
  static const getCashbackInfo = "/user/cashback?town_id=1";
  static const updateUserData = "/user";
  static const updateFirebaseToken = "/user/fcm-token";
  static const updateLanguage = "/user/language";

  // Partner
  static const updatePartnerData = "/partner";
  static const partnerStatus = "/partner/toggle";

  // Order
  static const createOrder = "/order";
  static const updateOrder = "/order/45";
  static const getOrder = "/order/49";
  static const cancelOrder = "/order/45";

  // Town
  static const findTownByLocation =
      "/town/by-location?lat=43.251251&lng=76.923180";

  // Faq
  static const getAvailableLanguages = "/language";
}
