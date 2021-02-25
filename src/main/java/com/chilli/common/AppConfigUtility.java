package com.chilli.common;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Read file properties
 * 
 * @author Mr.Ly
 * @version 1.0 2021-03-01
 *
 */
public class AppConfigUtility {

  /* file properties */
  private static final String CUS_FILE_CONFIG = "\\customer.properties";

  /**
   * get Value By key
   * @param key
   * @return value 
   */
  public String getProperty(String key) {
    Properties properties = new Properties();
    InputStream inputStream = null;
    try {
      inputStream = AppConfigUtility.class.getClassLoader()
              .getResourceAsStream(CUS_FILE_CONFIG);

      // load properties from file
      properties.load(inputStream);

    } catch (IOException e) {
      e.printStackTrace();
    } finally {
      // close objects
      try {
        if (inputStream != null) {
          inputStream.close();
        }
      } catch (IOException e) {
        e.printStackTrace();
      }
    }
    return properties.getProperty(key);
  }
}
