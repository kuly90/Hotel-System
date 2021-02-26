package com.chilli.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chilli.model.ImageBanner;
import com.chilli.repository.ImageBannerRepository;
import com.chilli.service.ImageBannerService;

/**
 * Process data image Banner
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 *
 */
@Service
public class ImageBannerServiceImpl implements ImageBannerService {

  /* ImageBannerRepository */
  @Autowired
  ImageBannerRepository bannerRepo;
  
  /**
   * Get banner By language
   * return lstBanner
   */
  @Override
  public List<ImageBanner> getAllBannerByLang(String lang) {
    // create List Banner
    List<ImageBanner> lstBanner = new ArrayList<ImageBanner>();
    // get All banner
    lstBanner = (List<ImageBanner>) bannerRepo.findByLanguage(lang);
    
    return lstBanner;
  }
}
