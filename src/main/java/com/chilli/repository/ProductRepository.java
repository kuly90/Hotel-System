package com.chilli.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chilli.model.Product;

/**
 * Get data form Product
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
public interface ProductRepository extends CrudRepository<Product, String> {

	// get all product sort Category
	@Query(value = "SELECT * FROM product ORDER BY CATEGORY_ID", nativeQuery = true)
	List<Product> getAllProductByCategory();
}
