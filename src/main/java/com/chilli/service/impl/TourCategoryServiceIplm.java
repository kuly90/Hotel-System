package com.chilli.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chilli.model.TourCategory;
import com.chilli.repository.TourCategoryRepository;
import com.chilli.service.TourCategoryService;

/**
 * Get data form Tour Category Table
 * 
 * @author Mr ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
@Service
public class TourCategoryServiceIplm implements TourCategoryService{

  /* Tour Category Repository */
  @Autowired
  TourCategoryRepository tourCateRepository;

  @Override
  public TourCategory getTourCategorById(String categoryId){

    // new instant  TourCategory
    TourCategory tourCate = new TourCategory();
    // get list Tour category
    tourCate = tourCateRepository.findByCategoryId(categoryId);

    return tourCate;
  }
}
