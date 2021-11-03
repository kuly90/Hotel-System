package com.chilli.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chilli.model.ImageBanner;

/**
 * Get data form ImageBanner
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
@Repository
public interface ImageBannerRepository extends CrudRepository<ImageBanner, String> {

  /**
   * get List Image Banner
   * @param lang
   * @return list image banner
   */
  List<ImageBanner> findByLanguageAndType(
                        String lang
                        , String type);

  /**
   * get List Image Banner By city
   * @param cityId
   * @param type
   * @param lang
   * @return list Banner
   */
  @Query(value = "SELECT\n"
               + " IMAGE_BANNER_ID AS IMAGE_BANNER_ID,\n"
               + " IMAGE_BANNER_URL AS IMAGE_BANNER_URL,\n"
               + " IMAGE_BANNER_CONTENT AS IMAGE_BANNER_CONTENT,\n"
               + " IMAGE_BANNER_TYPE AS IMAGE_BANNER_TYPE,\n"
               + " CITY_ID AS CITY_ID,\n"
               + " HOTEL_ID AS HOTEL_ID,\n"
               + " LANGUAGE AS LANGUAGE\n"
               + " FROM image_banner\n"
               + " WHERE CITY_ID = ?1\n"
               + " AND IMAGE_BANNER_TYPE = ?2\n"
               + " AND LANGUAGE = ?3", nativeQuery = true)
  List<ImageBanner> findBannerCity(
                        String cityId
                        , String type
                        , String lang);
}
