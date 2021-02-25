package com.chilli.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chilli.model.Category;
import com.chilli.model.Product;
import com.chilli.repository.CategoryRepository;
import com.chilli.repository.ProductRepository;
import com.chilli.service.ProductService;

/**
 * Process data Product
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
@Service
public class ProductServiceImpl implements ProductService{

  /* ProductRepository */
  @Autowired
  ProductRepository productRepo;
  
  /* CategoryRepository */
  @Autowired
  CategoryRepository categoryRepo;

  /**
   * get list product By category
   * @param categoryId  String
   * @return lstProduct
   */
  @Override
  public List<Product> getLstProductById(String categoryId) {

    // New instant List Product
    List<Product> lstProduct = new ArrayList<Product>();
    // get Category By Id
    Category category = categoryRepo.findOne(categoryId);
    // get list product
    lstProduct = category.getProducts();

    return lstProduct;
  }

  /**
   * get all product
   * @return products List
   */
  @Override
  public List<Product> getAllProduct() {

    // New instant List Product
    List<Product> lstProduct = new ArrayList<Product>();
    // get All product
    lstProduct = (List<Product>) productRepo.getAllProductByCategory();

    return lstProduct;
  }

  /**
   * process product
   * @param lstProduct list
   * @param intRowsPro int
   * @return List<List<Product>>
   */
  @Override
  public List<List<Product>> getListProAll(
        List<Product> lstProduct
        , int intRowsPro) {
    // create List include rows element
    List<List<Product>> lstProductAll = new ArrayList<List<Product>>();
    List<Product> lstProtCount = new ArrayList<Product>();
    
 // loop rows product
    for (int i = 0; i < intRowsPro; i++) {
      List<Product> lstProElement = new ArrayList<Product>();
      switch (i) {
      case 0:
        for (int j = 0; j < 3 && lstProtCount.size() < lstProduct.size(); j++) {
          lstProElement.add(lstProduct.get(j));
          lstProtCount.add(lstProduct.get(j));
        }
        break;
      case 1:
        for (int j = 3; j < 6 && lstProtCount.size() < lstProduct.size(); j++) {
          lstProElement.add(lstProduct.get(j));
          lstProtCount.add(lstProduct.get(j));
        }
        break;
      case 2:
        for (int j = 6; j < 9 && lstProtCount.size() < lstProduct.size(); j++) {
          lstProElement.add(lstProduct.get(j));
          lstProtCount.add(lstProduct.get(j));
        }
        break;
      case 3:
        for (int j = 9; j < 12 && lstProtCount.size() < lstProduct.size(); j++) {
          lstProElement.add(lstProduct.get(j));
          lstProtCount.add(lstProduct.get(j));
        }
        break;
      case 4:
        for (int j = 12; j < 15 && lstProtCount.size() < lstProduct.size(); j++) {
          lstProElement.add(lstProduct.get(j));
          lstProtCount.add(lstProduct.get(j));
        }
        break;
      case 5:
        for (int j = 15; j < 18 && lstProtCount.size() < lstProduct.size(); j++) {
          lstProElement.add(lstProduct.get(j));
          lstProtCount.add(lstProduct.get(j));
        }
        break;
      case 6:
        for (int j = 18; j < 21 && lstProtCount.size() < lstProduct.size(); j++) {
          lstProElement.add(lstProduct.get(j));
          lstProtCount.add(lstProduct.get(j));
        }
      case 7:
          for (int j = 21; j < 24 && lstProtCount.size() < lstProduct.size(); j++) {
            lstProElement.add(lstProduct.get(j));
            lstProtCount.add(lstProduct.get(j));
          }
      case 8:
          for (int j = 24; j < 27 && lstProtCount.size() < lstProduct.size(); j++) {
            lstProElement.add(lstProduct.get(j));
            lstProtCount.add(lstProduct.get(j));
          }
        break;
      default:
        break;
      }
      lstProductAll.add(lstProElement);
    }
    
    return lstProductAll;
  }

  /**
   * get product by product Id
   * @param productId
   * @return product
   */
  @Override
  public Product getProById(String productId) {

    // get product By product id
    Product product = productRepo.findOne(productId);
    
    return product;
  }
  
}
