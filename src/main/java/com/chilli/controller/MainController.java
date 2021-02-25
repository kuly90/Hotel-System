package com.chilli.controller;

import static com.chilli.common.ComConstant.*;

import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chilli.common.AppConfigUtility;
import com.chilli.common.Common;
import com.chilli.model.City;
import com.chilli.model.Customer;
import com.chilli.model.ImageBanner;
import com.chilli.model.MessageRes;
import com.chilli.service.CityService;
import com.chilli.service.CustomerService;
import com.chilli.service.ImageBannerService;
import com.chilli.service.MessageResService;

/**
 * 
 * Hotel System Controller
 * @author Ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
@Controller
public class MainController {

  /* common */
  Common common;

  /* Customer Service */
  @Autowired
  CustomerService cusService;

  /* Message Service */
  @Autowired
  MessageResService msgResService;

  /* City Service */
  @Autowired
  CityService cityServ;

  /* ImageBanner Service */
  @Autowired
  ImageBannerService bannerService;

  /**
   * go to page index
   * 
   * @param session
   * @param model
   * @return page index
   */
  @RequestMapping(value = { "/", "/guest" })
  public String welcome(
          HttpSession session
          , Model model) {

    // New Instant AppConfigUtility
    AppConfigUtility appUti = new AppConfigUtility();

    // page value
    String pageval = "";

    // get All Banner
    List<ImageBanner> lstBanner = bannerService.getAllBanner();
    // Bring list image banner to layout
    model.addAttribute("lstBanner", lstBanner);

    // get Da nang City
    City ctDanang = cityServ.getDanangCity(appUti.getProperty(KEY_DANANG_CITY));
    //bring danang city to layout
    model.addAttribute("ctDanang", ctDanang);

    // get All City
    List<City> lstCity = cityServ.getAllCity();
    lstCity.remove(ctDanang);
//    for (int i = 0; i < lstCity.size(); i++) {
//      if (appUti.getProperty(KEY_DANANG_CITY).equals(lstCity.get(i).getCityId())) {
//        
//      }
//    }
    // bring list City to layout
    model.addAttribute("lstCity", lstCity);

    pageval = appUti.getProperty(KEY_CHILLI_GUEST_INDEX_PAGE);

    return pageval;
  }

  /**
   * Go to page login
   * 
   * @param strScreenId
   * @param model
   * @return page Login
   */
  @RequestMapping("/login")
  public String login(@RequestParam(value = "screenAction") String screenAction, Model model) {

    // New Instant AppConfigUtility
    AppConfigUtility appUti = new AppConfigUtility();

    model.addAttribute("screenActionBefore", screenAction);
    String pageLogin = appUti.getProperty(KEY_CHILLI_CUS_GOTO_LOGIN_PAGE).toString();

    return pageLogin;
  }

  /**
   * logging Submit
   * 
   * @param cusLoginForm
   * @param session
   * @return MessageRes
   */
  @PostMapping("/loginSubmit")
  public @ResponseBody MessageRes loginSubmit(@ModelAttribute("loginForm") Customer cusLoginForm,
      HttpSession session) {

    // create instant common
    common = new Common();

    // create instant AppConfigUtility
    AppConfigUtility appUti = new AppConfigUtility();

    // create instant MessageRes
    MessageRes msgRes = new MessageRes();
    // list All phone
    List<String> lstPhone = cusService.getAllPhoneCus();
    // phone Input
    String strPhoneInp = cusLoginForm.getPhoneNumber();
    // pass word Input
    String passwordInp = cusLoginForm.getPassword();
    if (!lstPhone.contains(strPhoneInp) || 0 == lstPhone.size()) {
      // phone not exists
      msgRes = msgResService.getMessageById(CLLOG021_ERROR);
    } else {
      for (int i = 0; i < lstPhone.size(); i++) {
        if (strPhoneInp.equals(lstPhone.get(i))) {
          // get Customer Login
          Customer cusLogin = cusService.getCusByPhone(strPhoneInp);
          if (null == cusLogin) {
            msgRes = msgResService.getMessageById(CLLOG021_ERROR);
            // Account has locked
          } else if (appUti.getProperty(KEY_DLT_FLG_Y).equals(cusLogin.getDltFlg())) {
            msgRes = msgResService.getMessageById(CLLOG022_ERROR);
            // pass word has not match
          } else if (!common.getEncryptionPass(passwordInp).equals(cusLogin.getPassword())) {
            msgRes = msgResService.getMessageById(CLLOG023_ERROR);
          } else {
            msgRes = msgResService.getMessageById(CLLOG020_SUCCESS);
            cusLogin.setIsLogin(appUti.getProperty(KEY_LOGIN_TRUE));
            cusService.saveCustomer(cusLogin);
            session.setAttribute("cusLogin", cusLogin);
            return msgRes;
          }
        }
      }
    }

    return msgRes;
  }

  /**
   * Go to resgister Page
   * 
   * @param model
   * @param modUpd mode updste
   * @return registerPage
   */
  @RequestMapping("/newCustomer")
  public String newCustomer(Model model, @RequestParam(value = "modUpd") String modUpd) {

    model.addAttribute("modUpd", modUpd);
    String registerPage = "customer/register";

    return registerPage;
  }

  /**
   * Register Customer
   * 
   * @param cusForm data from register
   * @param session
   * @param modUpd
   * @return Message
   * @throws ParseException
   */
  @PostMapping("/registerCustomer")
  public @ResponseBody MessageRes saveCustomer(
        @ModelAttribute("newCustomerForm") Customer cusForm
        , HttpSession session
        , @RequestParam(value = "modUpd") String modUpd) throws ParseException {

    // create instant AppConfigUtility
    AppConfigUtility appUti = new AppConfigUtility();

    // get UserId login
    String strUserIdLogin = (String) session.getAttribute("userId");

    // new Instant Common
    common = new Common();

    // new Instant Message
    MessageRes msgResult = new MessageRes();

    Customer cusInsByPhone = null;
    Customer cusInsEmail = null;
    // find Customer By Number Phone
    cusInsByPhone = cusService.getCusByPhone(cusForm.getPhoneNumber());

    // get email from register
    if (!common.isNullOrEmpty(cusForm.getEmail())) {
      // find Customer By Email
      cusInsEmail = cusService.getCusByEmail(cusForm.getEmail());
    }

    // check exists Customer
    boolean checkExistsCus = false;
    if (appUti.getProperty(KEY_MODE_INSERT).equals(modUpd)) {
      if (null != cusInsByPhone || null != cusInsEmail) {
        msgResult = msgResService.getMessageById(CLCUS011_ERROR);
        // exists Customer
        checkExistsCus = true;
      } else if (!common.isNullOrEmpty(strUserIdLogin)) {
        msgResult = msgResService.getMessageById(CLCUS012_ERROR);
        // exists Customer
        checkExistsCus = true;
      }
    } else if (appUti.getProperty(KEY_MODE_UPDATE).equals(modUpd)) {
      // find customer By id
      Customer cusUpd = cusService.getCustomerById(cusForm.getCustomerId());
      Customer cusUpdByPhone = null;
      Customer cusUpdByEmail = null;
      // check exists phone number
      if (!cusUpd.getPhoneNumber().equals(cusForm.getPhoneNumber())) {
        cusUpdByPhone = cusService.getCusByPhone(cusForm.getPhoneNumber());
      }
      // check exists email
      if (!cusUpd.getEmail().equals(cusForm.getEmail())) {
        cusUpdByEmail = cusService.getCusByEmail(cusForm.getEmail());
      }

      // check exists phone number or email
      if (null != cusUpdByPhone || null != cusUpdByEmail) {
        msgResult = msgResService.getMessageById(CLCUS011_ERROR);
        // exists Customer
        checkExistsCus = true;
      }
    }

    // Have Not Exists Customer before
    if (!checkExistsCus) {
      cusService.insertOrUpdCustomer(cusForm, CHILLI_ADMIN, modUpd);
      // register Success
      msgResult = msgResService.getMessageById(CLCUS010_SUCCESS);
    }
    return msgResult;
  }


}