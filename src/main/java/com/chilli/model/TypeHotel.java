package com.chilli.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Type Hotel Properties
 *
 * @author Ton That Cu Ly
 * @version 1.0 2021-03-01
 * 
 */
@Entity
@Table(name = "typeHotel")
public class TypeHotel implements Serializable{
  private static final long serialVersionUID = 1L;

  /* id */
  @Id
  @Column(name = "TYPE_ID")
  private String typeId;

  /* Type name */
  @Column(name = "TYPE_NAME")
  private String typeName;

  /* category */
  @Column(name = "CATEGORY")
  private String category;

  /* language */
  @Column(name = "LANGUAGE")
  private String language;

  /* data tab css */
  @Column(name = "DATA_TAB")
  private String dataTab;

  /* class css */
  @Column(name = "CLASS_CSS")
  private String classCss;
  
  /* class css */
  @Column(name = "CLASS_CSS2")
  private String classCss2;

  /* image */
  @Column(name = "IMAGE")
  private String image;

  /**
   * get image
   * @return image String
   */
  public String getImage() {
    return image;
  }

  /**
   * get class 2
   * @return classCss2 String
   */
  public String getClassCss2() {
    return classCss2;
}

  /**
   * set class 2
   * @param classCss2
   */
  public void setClassCss2(String classCss2) {
    this.classCss2 = classCss2;
  }


/**
   * set image
   * @param image
   */
  public void setImage(String image) {
    this.image = image;
  }

  /**
   * get data tab
   * @return dataTab String
   */
  public String getDataTab() {
    return dataTab;
}

  /**
   * set data tab
   * @param dataTab
   */
  public void setDataTab(String dataTab) {
    this.dataTab = dataTab;
}

  /**
   * get class css
   * @return classCss
   */
  public String getClassCss() {
    return classCss;
}

  /**
   * set class css
   * @param classCss
   */
  public void setClassCss(String classCss) {
    this.classCss = classCss;
}

/**
   * get category
   * @return category String
   */
  public String getCategory() {
    return category;
  }

  /**
   * Set category
   * @param category
   */
  public void setCategory(String category) {
    this.category = category;
}

/**
   * get Type id
   * @return type id
   */
  public String getTypeId() {
    return typeId;
  }

  /**
   * Set type id
   * @param typeId
   */
  public void setTypeId(String typeId) {
    this.typeId = typeId;
  }

  /**
   * get type name
   * @return typeName
   */
  public String getTypeName() {
    return typeName;
  }

  /**
   * set Set type Name
   * @param typeName
   */
  public void setTypeName(String typeName) {
    this.typeName = typeName;
  }

  /**
   * language
   * @return language
   */
  public String getLanguage() {
    return language;
  }

  /**
   * set language
   * @param language
   */
  public void setLanguage(String language) {
    this.language = language;
  }

}
