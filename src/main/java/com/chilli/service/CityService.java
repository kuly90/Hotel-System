package com.chilli.service;

import java.util.List;

import com.chilli.model.City;

/**
 * Get data form Category
 * 
 * @author Mr Ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
public interface CityService {
  /**
   * get All City
   * @return list City
   */
  public List<City> getAllCity();

  /**
   * get Danang city
   * @param strCityId
   * @return Danang City
   */
  public City getDanangCity(String strCityId);
}
