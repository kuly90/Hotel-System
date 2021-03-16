package com.chilli.service.impl;

import java.util.ArrayList;
import java.util.List;

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
  TourCategoryRepository tourCateRepo;

  public List<TourCategory> getTourCate(){
    
    return new ArrayList<TourCategory>();
  }
}
