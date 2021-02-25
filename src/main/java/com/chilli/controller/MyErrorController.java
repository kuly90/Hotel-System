package com.chilli.controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;

import org.springframework.boot.autoconfigure.web.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chilli.common.AppConfigUtility;
import static com.chilli.common.ComConstant.*;

/**
 * MyError Controller
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
@Controller
public class MyErrorController implements ErrorController {

  /**
   * Handle Error
   * @param request
   * @return error page
   */
  @RequestMapping("/error")
  public String handleError(HttpServletRequest request) {

    // New Instant AppConfigUtility
       AppConfigUtility appUti = new AppConfigUtility();
    // get error status
    Object status = request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE);

    if (status != null) {
      Integer statusCode = Integer.valueOf(status.toString());

      if (statusCode == HttpStatus.NOT_FOUND.value()) {
        return appUti.getProperty(KEY_CHILLI_ERROR_404_PAGE);
      } else if (statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
        return appUti.getProperty(KEY_CHILLI_ERROR_500_PAGE);
      } else if (statusCode == HttpStatus.BAD_REQUEST.value()) {
        return appUti.getProperty(KEY_CHILLI_ERROR_400_PAGE);
      }
    }
    return appUti.getProperty(KEY_CHILLI_ERROR_PAGE);
  }

  @Override
  public String getErrorPath() {
    return "/error";
  }
}
