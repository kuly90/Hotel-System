package com.chilli.service;

import java.util.List;

import com.chilli.model.City;

/**
 * Get data form Category
 * 
 * @author Mr ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
public interface CityService {

  public List<City> getAllCity();

  public City getDanangCity(String strCityId);
}
