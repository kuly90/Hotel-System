package com.chilli.service;

import java.text.ParseException;
import java.util.List;

import com.chilli.model.Customer;

/**
 * Get data from Customer
 * 
 * @author This Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
public interface CustomerService {

 /**
  * Insert or update customer
  * @param cusForm
  * @param strUserIdLogin
  * @param strModeUpd
  * @throws ParseException
  */
  public void insertOrUpdCustomer(
          Customer cusForm
          , String strUserIdLogin
          , String strModeUpd) throws ParseException;

 /**
  * Get Customer By Phone
  * @param agr
  * @return Customer
  */
  public Customer getCusByPhone(String strPhonerNuber);
  
  /**
   * Get Customer By email
   * @param agr
   * @return Customer
   */
   public Customer getCusByEmail(String strEmail);
  
  /**
   * Get Customer By Id
   * @param cusId
   * @return Customer
   */
  public Customer getCustomerById(String cusId);

  /**
   * get All Customer
   * @return list All Customer
   */
  public List<Customer> getLstAllCustomer();

  /**
   * get All Phone
   * @return All Phone
   */
  public List<String> getAllPhoneCus();

  public void saveCustomer(Customer cus);

}
