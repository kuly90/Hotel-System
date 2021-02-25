package com.chilli.service;

import java.util.List;

import com.chilli.model.Product;

/**
 * Get data form Product
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
public interface ProductService {

  /**
   * get All product
   * @return product List
   */
  public List<Product> getAllProduct();

  public List<List<Product>> getListProAll(List<Product> lstProduct, int intRowsPro);

  public List<Product> getLstProductById(String categoryId);

  public Product getProById(String productId);

}
