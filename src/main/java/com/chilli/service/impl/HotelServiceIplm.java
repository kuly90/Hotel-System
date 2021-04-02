package com.chilli.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chilli.model.Hotel;
import com.chilli.repository.HotelRepository;
import com.chilli.service.HotelService;

/**
 * Process data Hotel
 * @author Mr.Ly
 * @version 1.0 2021-03-01
 *
 */
@Service
public class HotelServiceIplm implements HotelService{

  /* Hotel Repository */
  @Autowired
  HotelRepository hotelRepo;

  /**
   * Get list hotel in city sort by Star
   * @param cityId
   * @param lang
   * @param status
   * @return list of hotel
   */
  @Override
  public List<Hotel> getHoltelByCitySortByStar(
        String cityId
        , String lang
        , String status) {
   // new instant Array List of Hotel
   List<Hotel> lstHotel = new ArrayList<Hotel>();
   // get list hotel
   lstHotel = hotelRepo.findByCityLangStatus(
                              cityId
                              , lang
                              , status);

    return lstHotel;
  }
  
  /**
   * Get list hotel in city sort by hotel name
   * @param cityId
   * @param lang
   * @param status
   * @return list of hotel
   */
  @Override
  public List<Hotel> getHoltelByCitySortByName(
        String cityId
        , String lang
        , String status) {
   // new instant Array List of Hotel
   List<Hotel> lstHotel = new ArrayList<Hotel>();
   // get list hotel
   lstHotel = hotelRepo.findByCityLangStatusASC(
                              cityId
                              , lang
                              , status);

    return lstHotel;
  }

}
