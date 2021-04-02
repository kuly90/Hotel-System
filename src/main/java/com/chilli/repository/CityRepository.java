package com.chilli.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chilli.model.City;

/**
 * Get data form City Table
 * 
 * @author Mr Ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
@Repository
public interface CityRepository extends CrudRepository<City, String>{
  
}
