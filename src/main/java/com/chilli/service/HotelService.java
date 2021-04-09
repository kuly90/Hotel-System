package com.chilli.service;

import java.util.List;

import com.chilli.model.Hotel;

/**
 * Process data City
 * @author Mr.Ly
 * @version 1.0 2021-03-01
 *
 */
public interface HotelService {

  /**
   * Get hotel in city sort by star
   * @param cityId
   * @param lang
   * @param status
   * @return list hotel
   */
  public List<Hotel> getHoltelByCitySortByStar(
                              String cityId
                              , String lang
                              , String status);

  /**
   * Get hotel in city sort by hotel name
   * @param cityId
   * @param lang
   * @param status
   * @param category
   * @return list hotel
   */
  public List<Hotel> getHoltelByCitySortByName(
                              String cityId
                              , String lang
                              , String status
                              , String category);

}
