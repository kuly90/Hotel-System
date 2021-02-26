package com.chilli.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chilli.model.ImageBanner;

/**
 * Get data form ImageBanner
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
public interface ImageBannerRepository extends CrudRepository<ImageBanner, String> {

  // get banner by language
  List<ImageBanner> findByLanguage(String lang);
}
