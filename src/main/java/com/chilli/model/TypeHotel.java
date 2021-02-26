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

  /* language */
  @Column(name = "LANGUAGE")
  private String language;

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
