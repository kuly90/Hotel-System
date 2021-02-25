package com.chilli.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Product
 * 
 * @author Mr.Ly
 * @version 1.0 2020-09-09
 */
@Entity
@Table(name = "product")
public class Product implements Serializable {
  private static final long serialVersionUID = 1L;

  /* Product Id */
  @Id
  @Column(name = "PRODUCT_ID")
  private String productId;

  /* Product Name */
  @Column(name = "PRODUCT_NAME")
  private String productName;

  /* Product Quantity */
  @Column(name = "PRODUCT_QUANTITY")
  private Integer quantity;

  // Product New Price
  @Column(name = "PRODUCT_NEW_PRICE")
  private Integer newPrice;
  
  //Product Old Price
 @Column(name = "PRODUCT_OLD_PRICE")
 private Integer oldPrice;

  // Product Status
  @Column(name = "PRODUCT_STATUS")
  private String status;

  // Product size
  @Column(name = "PRODUCT_SIZE")
  private String size;

  // Product Description
  @Column(name = "PRODUCT_DESCRIPTION")
  private String description;

  // images of product
  @OneToMany(mappedBy = "product")
  private List<Image> images;
  
  //images of product
  @OneToMany(mappedBy = "product")
  private List<ImageDetail> imagesDetails;
  
  // Category
  @ManyToOne
  @JoinColumn(name = "CATEGORY_ID")
  private Category category;

  /**
   * get product id
   * @return productId
   */
  public String getProductId() {
    return productId;
  }

  /**
   * Set product Id
   * @param productId String
   */
  public void setProductId(String productId) {
    this.productId = productId;
  }

  /**
   * get product name
   * @return productId String
   */
  public String getProductName() {
    return productName;
  }

  /**
   * Set product Name
   * @param productName String
   */
  public void setProductName(String productName) {
    this.productName = productName;
  }

  /**
   * get product quantity
   * @return product Integer
   */
  public Integer getQuantity() {
  return quantity;
}

  /**
   * Set product quantity
   * @param quantity Integer
   */
  public void setQuantity(Integer quantity) {
    this.quantity = quantity;
  }

  /**
   * get product Status
   * @return Status String
   */
  public String getStatus() {
    return status;
  }

  /**
   * set product status
   * @param status String
   */
  public void setStatus(String status) {
    this.status = status;
  }

  /**
   * get product Size
   * @return size String
   */
  public String getSize() {
    return size;
  }

  /**
   * set product size
   * @param size String
   */
  public void setSize(String size) {
    this.size = size;
  }

  /**
   * get Product New Price
   * @return price Integer
   */
  public Integer getNewPrice() {
    return newPrice;
  }

  /**
   * set product new Price
   * @param price Integer
   */
  public void setNewPrice(Integer newPrice) {
    this.newPrice = newPrice;
  }


  /**
   * get Product Old Price
   * @return price Integer
   */
  public Integer getOldPrice() {
    return oldPrice;
}

  /**
   * set product Old Price
   * @param price Integer
   */
  public void setOldPrice(Integer oldPrice) {
    this.oldPrice = oldPrice;
}

/**
   * get Description
   * @return description String
   */
  public String getDescription() {
    return description;
  }

  /**
   * Set description
   * @param description String
   */
  public void setDescription(String description) {
    this.description = description;
  }

  /**
   * get list images of product
   * @return image List
   */
  public List<Image> getImages() {
    return images;
  }

  /**
   * set list images of product
   * @param images List
   */
  public void setImages(List<Image> images) {
    this.images = images;
  }

  /**
   * get list images detail of product
   * @return image detail List
   */
  public List<ImageDetail> getImagesDetails() {
    return imagesDetails;
}

  /**
   * set list images detail of product
   * @param imagesDetail detail List
   */
  public void setImagesDetails(List<ImageDetail> imagesDetails) {
    this.imagesDetails = imagesDetails;
}

/**
   * get Category
   * @return Category
   */
  public Category getCategory() {
  return category;
}

  /**
   * Set category
   * @param category
   */
  public void setCategory(Category category) {
  this.category = category;
}

  /**
   * get Format New Price
   * @return format price string
   */
  public String getFormatNewPrice() {
    String strFormatPrice = "";
    strFormatPrice = String.valueOf(this.getNewPrice());
    StringBuilder stbFormatPrice = new StringBuilder();
    // check length of String price between 3 and 7 (hundred thousand)
    if (3 < strFormatPrice.length() && 7 > strFormatPrice.length()) {
      // thousand
      stbFormatPrice.append(strFormatPrice.substring(0, strFormatPrice.length() - 3));
      stbFormatPrice.append(".");
      // hundred
      stbFormatPrice.append(strFormatPrice.substring(strFormatPrice.length() - 3, strFormatPrice.length()));
      // check length of String price between 7 and 10 (million)
    } else if (7 <= strFormatPrice.length() && 10 > strFormatPrice.length()) {
      // million
      stbFormatPrice.append(strFormatPrice.substring(0, strFormatPrice.length() - 6));
      stbFormatPrice.append(".");
      // thousand
      stbFormatPrice.append(strFormatPrice.substring(strFormatPrice.length() - 6, strFormatPrice.length() - 3));
      stbFormatPrice.append(".");
      // hundred
      stbFormatPrice.append(strFormatPrice.substring(strFormatPrice.length() - 3, strFormatPrice.length()));
    } 

    return stbFormatPrice.toString();
  }
  
  /**
   * get Format Old Price
   * @return format price string
   */
  public String getFormatPldPrice() {
    String strFormatPrice = "";
    strFormatPrice = String.valueOf(this.getOldPrice());
    StringBuilder stbFormatPrice = new StringBuilder();
    // check length of String price between 3 and 7 (hundred thousand)
    if (3 < strFormatPrice.length() && 7 > strFormatPrice.length()) {
      // thousand
      stbFormatPrice.append(strFormatPrice.substring(0, strFormatPrice.length() - 3));
      stbFormatPrice.append(".");
      // hundred
      stbFormatPrice.append(strFormatPrice.substring(strFormatPrice.length() - 3, strFormatPrice.length()));
      // check length of String price between 7 and 10 (million)
    } else if (7 <= strFormatPrice.length() && 10 > strFormatPrice.length()) {
      // million
      stbFormatPrice.append(strFormatPrice.substring(0, strFormatPrice.length() - 6));
      stbFormatPrice.append(".");
      // thousand
      stbFormatPrice.append(strFormatPrice.substring(strFormatPrice.length() - 6, strFormatPrice.length() - 3));
      stbFormatPrice.append(".");
      // hundred
      stbFormatPrice.append(strFormatPrice.substring(strFormatPrice.length() - 3, strFormatPrice.length()));
    } 

    return stbFormatPrice.toString();
  }

}
