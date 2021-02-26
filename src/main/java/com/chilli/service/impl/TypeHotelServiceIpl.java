package com.chilli.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chilli.model.TypeHotel;
import com.chilli.repository.TypeHotelRepository;
import com.chilli.service.TypeHotelService;

/**
 * Get data form Type Hotel Table
 * 
 * @author Mr ton That Cu Ly
 * @version 1.0 2021-03-01
 *
 */
@Service
public class TypeHotelServiceIpl implements TypeHotelService{

  /* Type Hotel Repository */
  @Autowired
  TypeHotelRepository typeHotRepo;

  /**
   * get list type hotel
   * @param lang
   * @return list type hotel
   */
  @Override
  public List<TypeHotel> getTypeHotByLang(String lang) {
    // new instant Array List of type hotel
    List<TypeHotel> lstTypeHot = new ArrayList<TypeHotel>();
    // get Type hotel by language
    lstTypeHot = (List<TypeHotel>) typeHotRepo.findByLanguage(lang);

    return lstTypeHot;
  }

}
