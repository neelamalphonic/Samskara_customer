
class ApiConfig {

  ApiConfig._();

  static const String app_base_url                      = 'http://staging.alphonic.net.in:6400/api/v1/';

  static const String MAP_API_KEY                        = 'AIzaSyDJ0pCgiBiwmA4O8Hm9TWTXVU2A4Ee_UAY';

  static const String SIGN_UP_API                        = 'u/signup';
  static const String OTP_API_VALUES                     = 'u/verifyPhone';
  static const String RESEND_OTP                         = 'u/resend/phoneVerify';


  static const String LOGIN_API                          = 'c/login';

  static const String TOKEN_REFRESH_API                  = 'c/users/token/refresh';

  static const String PRIVACY_POLICY_API                 = 'c/privacy-policy/getAll';
  static const String TERMS_CONDITION_API                = 'c/terms-and-conditions/getAll';
  static const String CANCELLATION_POLICY_API            = 'c/cancellation-policy/getAll';
  static const String ABOUT_US                           = 'c/about/getAll';

  static const String DASHBOARD_API_NAME                 = 'c/dashboard';
  static const String GUEST_USER_DATA_ID                 = 'c/guest/guestid';

  static const String FAQ_DATA_LISTING                   = 'c/faqs';
  static const String SEARCH_LIST_API_NAME               = 'c/searchProducts';

  //detail
  static const String VENDOR_DETAILS_DATA                = 'c/vendor';
  static const String VENDOR_PRODUCT_LISTING             = 'c/vendorProductListing';

  static const String VENDOR_LIST_BY_CATEGORY            = 'c/vendorsByStoreType';

  //cart
  static const String ADD_TO_CART_WITH_GUEST             = 'c/guest/addToCart/';
  static const String ADD_TO_CART_WITH_LOGIN             = 'c/user/addToCart/';

  static const String CART_LISTING_DATA_GUEST_ID         = 'c/guest/cartlist/';
  static const String CART_LISTING_DATA_LOGIN_ID         = 'c/user/cartlist';

  static const String MERGE_GUEST_TO_LOGIN_DATA          = 'c/user/mergeCart/';

  static const String LOGIN_USER_CART_DELETE             = 'c/user/deleteCart/';
  static const String GUEST_CART_DELETE                  = 'c/guest/deleteCart/';


  static const String GET_CUSTOMER_DATA_PROFILE          = 'c/users/profile';
  // static const String UPDATE_CUSTOMER_DATA_PROFILE     = 'c/users/update';
  static const String UPDATE_CUSTOMER_DATA_PROFILE       = 'c/users/profileUpdate';

  static const String UPLOAD_CUSTOMER_IMAGES             = 'c/upload';
  static const String UPLOAD_PROFILE_IMAGE_DATA_VALUES   = 'c/users/profileImage';

  static const String CHECK_PRODUCTS_IN_CART_DATA        = 'c/order/productsInStock/check';

  static const String ADD_NEW_CREDIT_DEBIT_CARD          = 'c/addNewCard';
  static const String GET_ALL_CARDS_FROM_LISTING_DATA    = 'c/viewAllCards';
  static const String SET_DEFAULT_CARD_LISTING           = 'c/setDefaultCard/';

  static const String COMPLETE_CHECKOUT_PROCESS          = 'c/charge';

  static const String GET_ALL_ORDERS_PENDING_PAST        = 'c/order/products';
  static const String GET_ORDER_DATA_DETAILS_SERVER      = 'c/order/product/';

  static const String FORGOT_PASSWORD                    = 'c/forgotPassword';
  static const String VERIFY_FORGOT_PASSWORD             = 'c/verifyForgotPassOtp';
  static const String RESET_PASSWORD                     = 'c/resetPassword';

  //helpdesk
  static const String HELP_ACTIVE_TICKET                 = 'c/helpdesk/active/pagin';
  static const String HELP_CLOSED_TICKET                 = 'c/helpdesk/closed/pagin';

  static const String HELP_INSERT_TICKET                 = 'c/helpdesk/insert';
  static const String HELP_DRIVER_REPLY                  = 'c/replytoTicket';

  static const String HELP_GET_ALL_REPLY                 = 'c/getReplytoTicket/';

  //address
  static const String ADD_ADDRESS                        = 'c/users/address';
  static const String SET_IS_DEFAULT                     = 'c/users/setDefault/';
  static const String UPDATE_ADDRESS                     = 'c/users/addressUpdate/';

  static const String CHANGE_PASSWORD                    = 'c/users/change_password';

  static const String DRIVER_RATING                      = 'r/rating/customer';

  static const String DELETE_CARD                        = 'c/deleteCard/';

  static const String PHOTO_D_1                          = 'c/users/update/photoId';
  static const String PHOTO_ID_2                         = 'c/users/update/photoId2';

  static const String UPDATE_DEVICE_TOKEN                = 'c/users/update/deviceToken';
  static const String VENDOR_RATING                      = 'c/ratings/givenForVendor/pagin';

  // static const String COUPON_PAGIN                     = 'c/coupon/pagin';
  static const String COUPON_PAGIN                       = 'c/coupon/listing';
  static const String IS_COUPON_VALIDE                   = 'c/coupon/isValid';

  static const String ORDER_CANCEL                       = 'c/order/cancel/';

  static const String DELETE_ADDRESS                     = 'c/users/deleteAddress/';

  static const String CLEAR_CART                         = 'c/user/deleteWholeCart';

  //user
  static const String DISTANCE_CALCULATION               = 'c/users/distanceCalculate';
  static const String GET_ALL_CHARGES_GETSETTING         = 'c/getSettings';

  static const String NOTIFICATION_PAGIN                 = 'c/notification/pagin';

  static const String REGISTERED_PAGIN                   = 'c/referral/pagin';
  static const String TRANSACTION_PAGIN                  = 'c/account/pagin';

  static const String GET_GIVEN_RATING_TO_ORDER          = 'c/ratings/givenForOrder/';
  static const String GIVE_RATING_TO_VENDOR              = 'c/ratings/vendor';
  static const String GIVE_RATING_TO_DRIVER              = 'c/ratings/driver';



}