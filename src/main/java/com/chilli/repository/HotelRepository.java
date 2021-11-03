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
  @Query(value = "SELECT \n"
               + " HOTEL_ID AS HOTEL_ID,\n"
               + " HOTEL_NAME AS HOTEL_NAME,\n"
               + " HOTEL_STAR AS HOTEL_STAR,\n"
               + " HOTEL_ADRESS AS HOTEL_ADRESS,\n"
               + " HOTEL_PHONE AS HOTEL_PHONE,\n"
               + " HOTEL_DESCRIPTION AS HOTEL_DESCRIPTION,\n"
               + " HOTEL_STATUS AS HOTEL_STATUS,\n"
               + " LANGUAGE AS LANGUAGE,\n"
               + " IMAGE_URL AS IMAGE_URL,\n"
               + " AVERAGE_OLD_PRICE AS AVERAGE_OLD_PRICE,\n"
               + " AVERAGE_NEW_PRICE AS AVERAGE_NEW_PRICE,\n"
               + " CATEGORY AS CATEGORY,\n"
               + " CITY_ID AS CITY_ID\n"
               + " FROM hotel\n"
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
  @Query(value = "SELECT"
               + " HOTEL_ID AS HOTEL_ID,\n"
               + " HOTEL_NAME AS HOLTEL_NAME\n"
               + " FROM hotel\n"
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
