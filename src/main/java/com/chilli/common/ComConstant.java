package com.chilli.common;

/**
 * Common Constant
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 */
public class ComConstant {

  /* Login error - access denied */
  public static final String CLCUS000_ERROR = "CLCUS000";

  /* Register Success */
  public static final String CLCUS010_SUCCESS = "CLCUS010";

  /* Register Error - Exists Phone Or Email */
  public static final String CLCUS011_ERROR = "CLCUS011";

  /* Register Error - Account is logging */
  public static final String CLCUS012_ERROR = "CLCUS012";

  /* Login Error - Phone not exists */
  public static final String CLLOG020_SUCCESS = "CLLOG020";

  /* Login Error - Phone not exists */
  public static final String CLLOG021_ERROR = "CLLOG021";

  /* Login Error - Account has locked */
  public static final String CLLOG022_ERROR = "CLLOG022";

  /* Login Error - password not match */
  public static final String CLLOG023_ERROR = "CLLOG023";

  /* create ID */
  public static final String CHILLI_ADMIN = "CHILLI_AD";

  /* Case Insert */
  public static final String KEY_MODE_INSERT = "MODE_INSERT";

  /* Case Update */
  public static final String KEY_MODE_UPDATE = "MODE_UPDATE";

  /* Dell flag None */
  public static final String KEY_DLT_FLG_N = "DLT_FLG_N";

  /* Dell flag YES */
  public static final String KEY_DLT_FLG_Y = "DLT_FLG_Y";

  /* IS Login true */
  public static final String KEY_LOGIN_TRUE = "LOGIN_TRUE";

  /* login default */
  public static final String KEY_LOGIN_FALSE = "LOGIN_FALSE";

  /* Role Customer */
  public static final String KEY_ROLE_CUSTOMER = "ROLE_CUSTOMER";

  /* Role Admin */
  public static final String KEY_ROLE_ADMIN = "ROLE_ADMIN";

  /* page login */
  public static final String KEY_CHILLI_CUS_GOTO_LOGIN_PAGE = "CHILLI_CUS_GOTO_LOGIN_PAGE";

  /* page index */
  public static final String KEY_CHILLI_CUS_INDEX_PAGE = "CHILLI_CUS_INDEX_PAGE";

  // Code for hotel system
  // Constant
  /* null value */
  public static final String VALUE_NULL = "";

  
  //key for request action controller
  /* request home action */
  public static final String REQUEST_ACTION_HOME = "/";
  public static final String REQUEST_ACTION_HOME_GUEST = "/guest";
  
  /* request city action */
  public static final String REQUEST_ACTION_CITY = "/city";
  
  /* request hotel detail action */
  public static final String REQUEST_ACTION_HOTEL_DETAIL = "/hotelDetail";

  /* request param city id */
  public static final String REQUEST_PARAM_CITY_ID = "cityId";
  
  /* request param hotel id */
  public static final String REQUEST_PARAM_HOTEL_ID = "hotelId";

  /* request param language */
  public static final String REQUEST_PARAM_LANGUAGE = "lang";

  /* request param Page */
  public static final String REQUEST_PARAM_PAGE = "page";

  // key for get value property
  /* page hotel system */
  public static final String KEY_CHILLI_GUEST_INDEX_PAGE = "CHILLI_GUEST_INDEX_PAGE";

  /* page hotels city */
  public static final String KEY_CHILLI_GUEST_CITY_PAGE = "CHILLI_GUEST_CITY_PAGE";
  
  /* page hotel detail */
  public static final String KEY_CHILLI_GUEST_HOTEL_PAGE = "CHILLI_GUEST_HOTEL_PAGE";

  /* page error */
  public static final String KEY_CHILLI_ERROR_PAGE = "CHILLI_CUS_ERROR_PAGE";

  /* page error */
  public static final String KEY_CHILLI_ERROR_404_PAGE = "CHILLI_ERROR_404_PAGE";

  /* page error */
  public static final String KEY_CHILLI_ERROR_500_PAGE = "CHILLI_ERROR_500_PAGE";
  
  /* page error */
  public static final String KEY_CHILLI_ERROR_400_PAGE = "CHILLI_ERROR_400_PAGE";

  /* Da Nang City Id */
  public static final String KEY_DANANG_CITY = "DANANG_CITY";

  /* language viet nam*/
  public static final String KEY_LANGUAGE_VN = "LANGUAGE_VN";

  /* Type hotel category: hotel */
  public static final String KEY_CATEGORY_HOTEL = "CATEGORY_HOTEL";

  /* Type hotel category:resort */
  public static final String KEY_CATEGORY_RESORT = "CATEGORY_RESORT";

  /* hotel category: hotel and resort */
  public static final String KEY_CATEGORY_SIDELINE = "CATEGORY_SIDELINE";

  /* Tour North */
  public static final String KEY_TOUR_CATEGORY_NORTH = "TOUR_CATEGORY_NORTH";
  
  /* Tour North */
  public static final String KEY_TOUR_CATEGORY_CENTRAL = "TOUR_CATEGORY_CENTRAL";
  
  /* Tour North */
  public static final String KEY_TOUR_CATEGORY_SOUTH = "TOUR_CATEGORY_SOUTH";
  
  /* Tour North */
  public static final String KEY_TOUR_CATEGORY_WORLD = "TOUR_CATEGORY_WORLD";

  /* banner city */
  public static final String KEY_BANNER_TYPE_CITY = "BANNER_TYPE_CITY";

  /* banner hotel */
  public static final String KEY_BANNER_TYPE_HOTEL = "BANNER_TYPE_HOTEL";

  /* hotel status: on */
  public static final String KEY_HOTEL_STATUS_ON = "HOTEL_STATUS_ON";

  /* hotel status: off */
  public static final String KEY_HOTEL_STATUS_OFF = "HOTEL_STATUS_OFF";

  /* Number of hotel in city: 6 */
  public static final String KEY_ITEM_HOTEL = "ITEM_HOTEL";

}
