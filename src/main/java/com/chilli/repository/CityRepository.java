package com.chilli.repository;

import org.springframework.data.repository.CrudRepository;

import com.chilli.model.City;

/**
 * Get data form City Table
 * 
 * @author Mr ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
public interface CityRepository extends CrudRepository<City, String>{
  
}
