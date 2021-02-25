package com.chilli.repository;

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

}
