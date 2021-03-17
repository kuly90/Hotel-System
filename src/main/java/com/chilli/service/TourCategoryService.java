package com.chilli.service;

import com.chilli.model.TourCategory;

/**
 * Get data form Tour Category Table
 * 
 * @author Mr ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
public interface TourCategoryService {

  /**
   * get Tour Category By Id
   * @return TourCate 
   */
  public TourCategory getTourCategorById(String categoryId);

}
