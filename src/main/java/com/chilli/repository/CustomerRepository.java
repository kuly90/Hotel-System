package com.chilli.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chilli.model.Customer;

/**
 * Get Data Customer
 * @author This Mr.Ly
 * @version 1.0 2020-09-09
 * 
 */
@Repository
public interface CustomerRepository extends CrudRepository<Customer, String> {
  
  // find Customer By phone Number Or Email
//  @Query(value = "select * from customer\n"
//               + "where PHONE_NUMBER = ?1 OR EMAIL = ?1", nativeQuery = true)
//  Customer getCustomerByPhoneOrEmail(String arg);
  
  // find customer By phone number
  Customer findByPhoneNumber(String strPhoneNuber);
  
  // find Customer By Email
  Customer findByEmail(String strEmail);
}
