package com.chilli.controller;

import static com.chilli.common.ComConstant.*;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chilli.common.AppConfigUtility;
import com.chilli.model.Category;
import com.chilli.model.Customer;
import com.chilli.model.ImageBanner;
import com.chilli.model.Product;
import com.chilli.service.CategoryService;
import com.chilli.service.ImageBannerService;
import com.chilli.service.ProductService;

/**
 * Product Controller
 * 
 * @author Mr.ly
 * @version 1.0 2020-09-09
 *
 */
@Controller
public class ProductController {

  /* Product Service */
  @Autowired
  ProductService proService;

  /* Category Service */
  @Autowired
  CategoryService cateService;
  
  /* ImageBanner Service */
  @Autowired
  ImageBannerService bannerService;

  /**
   * Search Product By Category
   * @param categoriesId String[]
   * @param model Model
   * @param session HttpSession
   * @return index page
   */
  @RequestMapping("/searProductByCategory")
  public String searProduct(
    @RequestParam(value = "cateroryId") String[] categoriesId
    , Model model
    ,HttpSession session) {

      // New Instant AppConfigUtility
      AppConfigUtility appUti = new AppConfigUtility();

      // get image Banner
      List<ImageBanner> lstBanner = bannerService.getAllBanner();

    // create List include rows element
    List<List<Product>> lstProductAll = new ArrayList<List<Product>>();

    // get All Category
    List<Category> lstCategory = cateService.getAllCategory();
    if (0 == categoriesId.length) {
      // get List product By CateGory
      List<Product> lstProduct = proService.getAllProduct();
      int intPro = lstProduct.size();

      // get rows display
      int intRowsPro = intPro / 3;
      int intRemainder = intPro % 3;
      if (0 < intRemainder) {
        intRowsPro += 1;
      }

      // get all product
      lstProductAll = proService.getListProAll(lstProduct, intRowsPro);

    } else {
      List<Product> lstProduct = new ArrayList<Product>();
      for (int i = 0; i < categoriesId.length; i++) {

        // get list search
        List<Product> lstProductSearch = proService.getLstProductById(categoriesId[i]);
        lstProduct.addAll(lstProductSearch);

      }
      int intPro = lstProduct.size();
      // get rows display
      int intRowsPro = intPro / 3;
      int intRemainder = intPro % 3;
      if (0 < intRemainder) {
        intRowsPro += 1;
      }
      // get all product
      lstProductAll = proService.getListProAll(lstProduct, intRowsPro);

    }
    model.addAttribute("lstProductAll", lstProductAll);
    model.addAttribute("lstCategory", lstCategory);
    model.addAttribute("lstBanner", lstBanner);
    // check customer login
    Customer cusLoged = (Customer) session.getAttribute("cusLogin");
    if (null != cusLoged) {
      model.addAttribute("cusName", cusLoged.getName());
    }
    // get index page
    String strIndexPage = appUti.getProperty(KEY_CHILLI_CUS_INDEX_PAGE);

    return strIndexPage;
  }

  /**
   * Product Detail
   * @param model Model
   * @param productId String
   * @param session HttpSession
   * @return productDetailPage String
   */
  @RequestMapping("/productDetail")
  public String productDetail(
      Model model
      , @RequestParam("productId") String productId
      , HttpSession session) {

    // New Instant AppConfigUtility
    AppConfigUtility appUti = new AppConfigUtility();

    // get All Category
    List<Category> lstCategory = cateService.getAllCategory();

    // get product detail
    Product productDetail = proService.getProById(productId);

    // find category by Product
    Category category = productDetail.getCategory();
    
    // check customer login
    Customer cusLoged = (Customer) session.getAttribute("cusLogin");
    if (null != cusLoged) {
      model.addAttribute("cusName", cusLoged.getName());
    }

    model.addAttribute("productDetail", productDetail);
    model.addAttribute("lstCategory", lstCategory);
    model.addAttribute("category", category);

    // get index page
    //String productDetailPage = appUti.getProperty(KEY_CHILLI_CUS_PRODUCT_DETAIL_PAGE);

      return "";
    }

}
