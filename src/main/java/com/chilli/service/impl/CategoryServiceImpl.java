package com.chilli.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chilli.model.Category;
import com.chilli.repository.CategoryRepository;
import com.chilli.service.CategoryService;

/**
 * Process data Category
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
@Service
public class CategoryServiceImpl implements CategoryService{

  /* CategoryRepository */
  @Autowired
  CategoryRepository categoryRepo;
  
  /**
   * get All Category
   * @return Categories list
   */
  @Override
  public List<Category> getAllCategory() {
    // new instant Array List
    List<Category> lstCategory = new ArrayList<Category>();
    
    // get all Category
    lstCategory = (List<Category>) categoryRepo.findAll();
    
    return lstCategory;
  }

}
