package com.chilli.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Common
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
public class Common {
  
  private static MessageDigest md;

  /* Number */
  protected static final String CHARACTER = "0123456789";
  
  /**
   * current date time
   * @return String current date
   * @throws ParseException 
   */
  public Date getCurrentDate() throws ParseException {
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    Date dCurrentDate = new Date();
    String strCurrent = dateFormat.format(dCurrentDate);
    
    return convertStringToDateTime(strCurrent);
  }
  
  /**
   * Convert String to datetime
   * @param strDate
   * @return Date Current Datetime
   * @throws ParseException
   */
  private Date convertStringToDateTime(String strDate)
      throws ParseException {
    DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    
    return dateFormat.parse(strDate);
}

  /**
   * Format String Date
   * @param strDate
   * @return String date
   */
  public String formatStrDate(String strDate) {
    String[] arrDate = strDate.split("/");
    StringBuilder stbDate = new StringBuilder(10);
    stbDate.append(arrDate[2]);
    stbDate.append("-");
    if (1 == arrDate[1].length()) {
      arrDate[1] = "0" + arrDate[1];
    }
    stbDate.append(arrDate[1]);
    stbDate.append("-");
    if (1 == arrDate[0].length()) {
      arrDate[0] = "0" + arrDate[0];
    }
    stbDate.append(arrDate[0]);

    return stbDate.toString();
  }
  
/**
 * Get random
 */
  public String getCustomerIdRandom() {

    StringBuilder stbCustomerId = new StringBuilder();
    String strCode = "CHILLI";
    stbCustomerId.append(strCode);
    stbCustomerId.append(getStrRandom());
    
    return stbCustomerId.toString();
  }
  
  /**
   * Get random String
   * @return String Random
   */
  private String getStrRandom() {

    SecureRandom rnd = new SecureRandom();
    StringBuilder sb = new StringBuilder( 6 );
    for( int i = 0; i < 6; i++ ) 
      sb.append( CHARACTER.charAt( rnd.nextInt(CHARACTER.length()) ) );
  
     return sb.toString();
  }

  /**
   * convert password encrypt password
   * @param password 
   * @return
   */
  public String getEncryptionPass(String password) {
    try {
      md = MessageDigest.getInstance("MD5");
      byte[] passBytes = password.getBytes();
      md.reset();
      byte[] digested = md.digest(passBytes);
      StringBuffer sb = new StringBuffer();
      for(int i=0;i<digested.length;i++){
        sb.append(Integer.toHexString(0xff & digested[i]));
      }
      return sb.toString();

      } catch (NoSuchAlgorithmException ex) {
          Logger.getLogger(Common.class.getName()).log(Level.SEVERE, null, ex);
      }
    return null;
  }
  
  /**
   * check param is null or empty
   * @param arg
   * @return check
   */
  public boolean isNullOrEmpty(String arg) {
    if (null == arg || 0 == arg.length()) {
      return true;
    } else {
      return false;
    }
  }
  
}
