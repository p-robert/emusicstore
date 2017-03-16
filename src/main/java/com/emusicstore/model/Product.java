package com.emusicstore.model;

import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;

/**
 * Created by user on 3/7/2017.
 */

@Entity

public class Product {

    @Id @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer productId;



    private String productName;
    private String productCategory;
    private String productDescription;
    private double productPrice;
    private String productCondition;
    private String productStatus;
    private String productManufacturer;
    private Integer unitInStock;

    @Transient
    private MultipartFile productImage;

    public MultipartFile getProductImage() {
        return productImage;
    }

    public void setProductImage(MultipartFile productImage) {
        this.productImage = productImage;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDesciption(String productDesciption) {
        this.productDescription = productDesciption;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductCondition() {
        return productCondition;
    }

    public void setProductCondition(String productCondition) {
        this.productCondition = productCondition;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManifacturer) {
        this.productManufacturer = productManifacturer;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public Integer getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(Integer unitInStock) {
        this.unitInStock = unitInStock;
    }
}
