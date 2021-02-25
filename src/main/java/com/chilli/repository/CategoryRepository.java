package com.chilli.repository;

import org.springframework.data.repository.CrudRepository;

import com.chilli.model.Category;

/**
 * Get data form Category
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
public interface CategoryRepository extends CrudRepository<Category, String>{

}
