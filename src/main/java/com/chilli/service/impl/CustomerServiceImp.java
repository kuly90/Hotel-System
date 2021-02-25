package com.chilli.service.impl;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chilli.common.AppConfigUtility;
import com.chilli.common.Common;
import com.chilli.common.ComConstant;
import com.chilli.model.Customer;
import com.chilli.repository.CustomerRepository;
import com.chilli.service.CustomerService;

/**
 * Process data get from Customer
 * @author This Mr.Ly
 * @version 1.0 2020-09-09
 */
@Service
public class CustomerServiceImp implements CustomerService {

  /* CustomerRepository */
  @Autowired
  CustomerRepository customerRepo;

  /* Common */
  Common common;

  /**
   * Insert Or update Customer
   * @param cusForm Register Form
   * @param strUserIdLogin UserID of Login
   * @param strModeUpd 
   * @throws ParseException 
   */
  @Override
  public void insertOrUpdCustomer(
      Customer cusForm
      , String strUserIdLogin
      , String strModeUpd) throws ParseException {

    // new Instant Common
    common = new Common();
    
    // New Instant Customer
    Customer newCustomer = new Customer();
    
    // create instant AppConfigUtility
    AppConfigUtility appUti = new AppConfigUtility();
    
    // case Insert
    if (appUti.getProperty(ComConstant.KEY_MODE_INSERT).equals(strModeUpd)) {
      // set customer Id
      newCustomer.setCustomerId(getCustomerId());
      // Create Date
      newCustomer.setCreateDate(common.getCurrentDate());
      // Set Update or create Id
      newCustomer.setUpdId(strUserIdLogin);
      // Case Update
    } else if (appUti.getProperty(ComConstant.KEY_MODE_UPDATE).equals(strModeUpd)) {
      // set customer Id
      newCustomer.setCustomerId(cusForm.getCustomerId());
     // set Update Date
      newCustomer.setUpdDate(common.getCurrentDate());
     // Set Update or create Id
      newCustomer.setUpdId(strUserIdLogin);
    }
    // set role
    newCustomer.setRole(appUti.getProperty(ComConstant.KEY_ROLE_CUSTOMER));
    // Set Customer Name
    newCustomer.setName(cusForm.getName());
    // Set Customer Phone
    newCustomer.setPhoneNumber(cusForm.getPhoneNumber());
    // Set Customer password
    newCustomer.setPassword(common.getEncryptionPass(cusForm.getPassword()));
    // Set Customer Email
    if (!common.isNullOrEmpty(cusForm.getEmail())) {
      newCustomer.setEmail(cusForm.getEmail());
    }
    // Set Customer Birthday
    if (!common.isNullOrEmpty(cusForm.getBirthday())) {
      newCustomer.setBirthday(common.formatStrDate(cusForm.getBirthday()));
    }
    // Set Customer address
    if(!common.isNullOrEmpty(cusForm.getAddress())) {
      newCustomer.setAddress(cusForm.getAddress());
    }
    // Set have login yet (not login)
    newCustomer.setIsLogin(appUti.getProperty(ComConstant.KEY_LOGIN_FALSE));
    // Set delete flag
    newCustomer.setDltFlg(appUti.getProperty(ComConstant.KEY_DLT_FLG_N));
    customerRepo.save(newCustomer);
    
  }
  
  /**
   * get customer By phone
   * @param agr
   * @return customer
   */
  @Override
  public Customer getCusByPhone(String strPhoneNumber) {
    Customer cus = customerRepo.findByPhoneNumber(strPhoneNumber);
    return cus;
  }
  
  /**
   * get customer By email
   * @param agr
   * @return customer
   */
  @Override
  public Customer getCusByEmail(String strEmail) {
    Customer cus = customerRepo.findByEmail(strEmail);
    return cus;
  }
  
  /**
   * Get customer By Id
   * @param cusId
   * @return customer
   */
  @Override
  public Customer getCustomerById(String cusId) {
    Customer cusById = customerRepo.findOne(cusId);
    return cusById;
  }

  /**
   * find All Customer
   * @return lstCus
   */
  @Override
  public List<Customer> getLstAllCustomer(){
    List<Customer> lstCus = new ArrayList<Customer>();
    lstCus = (List<Customer>) customerRepo.findAll();
    return lstCus;
  }

  /**
   * get All Phone Number
   * @return list Phone
   */
  @Override
  public List<String> getAllPhoneCus() {
    List<String> lstAllPhone = new ArrayList<String>();
    for (int i = 0; i < getLstAllCustomer().size(); i++) {
      lstAllPhone.add(getLstAllCustomer().get(i).getPhoneNumber());
    }
    return lstAllPhone;
  }
  
  /**
   * get and check CustomerId
   * @return String customerId
   */
  private String getCustomerId() {
    String strCustomerId = "";
    strCustomerId = common.getCustomerIdRandom();
    Customer cusIns =  customerRepo.findOne(strCustomerId);
    if (null != cusIns) {
      return getCustomerId();
    } else {
      return strCustomerId;
    }
  }
  
  /**
   * save Customer
   * @param cus
   */
  @Override
  public void saveCustomer(Customer cus) {
	  customerRepo.save(cus);
  }
}
