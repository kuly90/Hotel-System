package com.chilli.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chilli.model.Hotel;

/**
 * Get data form Hotel Table
 * 
 * @author Mr Ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
@Repository
public interface HotelRepository extends CrudRepository<Hotel, String>{
  /**
   * get list hotel in city sort by Star
   * @param cityId
   * @param lang
   * @param status
   * @return list hotel
   */
  @Query(value = "SELECT * FROM hotel\n"
               + " WHERE CITY_ID = ?1\n"
               + " AND LANGUAGE = ?2\n"
               + " AND HOTEL_STATUS = ?3\n"
               + " ORDER BY HOTEL_STAR DESC", nativeQuery = true)
  List<Hotel> findByCityLangStatus(
                            String cityId
                            , String lang
                            , String status);
  
  /**
   * get list hotel in city sort by Name
   * @param cityId
   * @param lang
   * @param status
   * @param category
   * @return list hotel
   */
  @Query(value = "SELECT * FROM hotel\n"
               + " WHERE CITY_ID = ?1\n"
               + " AND LANGUAGE = ?2\n"
               + " AND HOTEL_STATUS = ?3\n"
               + " AND CATEGORY = ?4\n"
               + " ORDER BY HOTEL_NAME ASC", nativeQuery = true)
  List<Hotel> findByCityLangStatusASC(
                            String cityId
                            , String lang
                            , String status
                            , String category);
}
