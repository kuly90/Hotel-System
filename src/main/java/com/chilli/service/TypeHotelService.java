package com.chilli.service;

import java.util.List;

import com.chilli.model.TypeHotel;

/**
 * Get data form Type Hotel Table
 * 
 * @author Mr ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
public interface TypeHotelService {

  /**
   * get type hotel
   * @param lang
   * @param category
   * @return list of type hotel
   */
  public List<TypeHotel> getTypeHotByLangAndCategory(
                                   String lang
                                   , String category);

  /**
   * get type hotel and resort
   * @param lang
   * @return list TypeHotel
   */
 public  List<TypeHotel> getTypeHotelAndResort(String lang);

}
