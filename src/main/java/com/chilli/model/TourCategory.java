package com.chilli.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Tour Category Properties
 *
 * @author Ton That Cu Ly
 * @version 1.0 2021-03-01
 * 
 */
@Entity
@Table(name = "tourCategory")
public class TourCategory implements Serializable{
  private static final long serialVersionUID = 1L;

  /* id */
  @Id
  @Column(name = "CATEGORY_ID")
  private String categoryId;

  /* category name */
  @Column(name = "CATEGORY_NAME")
  private String categoryname;

  /* list tour */
  @OneToMany(mappedBy = "tourCategory")
  private List<Tour> lstTour;

  /**
   * get list tour
   * @return lstTour List
   */
  public List<Tour> getLstTour() {
    return lstTour;
  }

  /**
   * Set list Tour
   * @param lstTour
   */
  public void setLstTour(List<Tour> lstTour) {
    this.lstTour = lstTour;
  }

/**
   * get category Id
   * @return categoryId String
   */
  public String getCategoryId() {
    return categoryId;
  }

  /**
   * Set category Id
   * @param categoryId
   */
  public void setCategoryId(String categoryId) {
    this.categoryId = categoryId;
  }

  /**
   * get category Name
   * @return categoryName String
   */
  public String getCategoryname() {
    return categoryname;
  }

  /**
   * Set categoryName
   * @param categoryname
   */
  public void setCategoryname(String categoryname) {
    this.categoryname = categoryname;
  }

}
