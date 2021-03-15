package com.chilli.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chilli.model.TypeHotel;

/**
 * Get data form Type Hotel Table
 * 
 * @author Mr ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
public interface TypeHotelRepository extends CrudRepository<TypeHotel, String>{
  // find By language
  List<TypeHotel> findByLanguageAndCategory(String lang, String category);
}
