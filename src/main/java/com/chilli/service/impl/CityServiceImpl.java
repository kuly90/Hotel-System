package com.chilli.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chilli.model.City;
import com.chilli.repository.CityRepository;
import com.chilli.service.CityService;

/**
 * Process data City
 * @author Mr.Ly
 * @version 1.0 2021-03-01
 *
 */
@Service
public class CityServiceImpl implements CityService{

  /* City Repository */
  @Autowired
  CityRepository cityrepo;

  @Override
  public List<City> getAllCity(){

    // new instant Array List of City
    List<City> lstCity = new ArrayList<City>();

    // get all City
    lstCity = (List<City>) cityrepo.findAll();

    return lstCity;
  }
}
