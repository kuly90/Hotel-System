package com.chilli.service;

import java.util.List;

import com.chilli.model.ImageBanner;

/**
 * Get data form image banner
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
public interface ImageBannerService {
  /**
   * get banner by Language
   * @param lang
   * @param type
   * @return list banner
   */
  public List<ImageBanner> getAllBannerByLangAndType(String lang, String type);

}
