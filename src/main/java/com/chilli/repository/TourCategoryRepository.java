package com.chilli.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chilli.model.TourCategory;

/**
 * Get data form Tour Category Table
 * 
 * @author Mr ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
@Repository
public interface TourCategoryRepository extends CrudRepository<TourCategory, String>{

}
