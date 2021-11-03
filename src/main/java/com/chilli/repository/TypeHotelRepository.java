package com.chilli.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chilli.model.TypeHotel;

/**
 * Get data form Type Hotel Table
 * 
 * @author Mr ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
@Repository
public interface TypeHotelRepository extends CrudRepository<TypeHotel, String>{
  /**
   * get List hotel By language and category
   * @param lang
   * @param category
   * @return Hotel List
   */
  List<TypeHotel> findByLanguageAndCategory(String lang, String category);
  
  @Query(value = " SELECT\n"
               + " TYPE_ID AS TYPE_ID,\n"
               + " TYPE_NAME AS TYPE_NAME,\n"
               + " CATEGORY AS CATEGORY,\n"
               + " LANGUAGE AS LANGUAGE,\n"
               + " DATA_TAB AS DATA_TAB,\n"
               + " CLASS_CSS AS CLASS_CSS,\n"
               + " CLASS_CSS2 AS CLASS_CSS2,\n"
               + " IMAGE AS IMAGE\n,"
               + " CONTENT AS CONTENT\n"
               + " FROM type_hotel\n"
               + " WHERE "
               + " (\n"
               + " CATEGORY = '1' AND LANGUAGE = ?1\n"
               + " )\n"
               + " OR\n"
               + " (\n"
               + " CATEGORY = '2' AND LANGUAGE = ?1\n"
               + " )" , nativeQuery = true)
  List<TypeHotel> findHotelAndResort(String lang);
}
