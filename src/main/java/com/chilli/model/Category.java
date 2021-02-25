package com.chilli.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 
 * Category
 * @author Mr.Ly
 *
 */
@Entity
@Table(name = "category")
public class Category implements Serializable {
  private static final long serialVersionUID = 1L;
  
  /* category id */
  @Id
  @Column(name = "CATEGORY_ID")
  private String categoryId;
  
  /* category name */
  @Column(name = "CATEGORY_NAME")
  private String categoryName;

  /* list product */
  @OneToMany(mappedBy = "category")
  private List<Product> products;

  /**
   * get category Id
   * @return categoryId String
   */
  public String getCategoryId() {
    return categoryId;
  }

  /**
   * set category Id
   * @param categoryId
   */
  public void setCategoryId(String categoryId) {
    this.categoryId = categoryId;
  }

  /**
   * get Category Name
   * @return categoryName String
   */
  public String getCategoryName() {
    return categoryName;
  }

  /**
   * Set category Name
   * @param categoryName
   */
  public void setCategoryName(String categoryName) {
    this.categoryName = categoryName;
  }

  /**
   * get list product
   * @return products List
   */
  public List<Product> getProducts() {
    return products;
  }

  /**
   * Set products
   * @param products
   */
  public void setProducts(List<Product> products) {
    this.products = products;
  }
  
}
