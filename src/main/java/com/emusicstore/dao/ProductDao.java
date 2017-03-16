package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.io.IOException;
import java.util.List;

/**
 * Created by user on 3/9/2017.
 */
public interface ProductDao {

    void addProduct(Product product);

    Product getProductById(Integer id) ;

    List<Product> getAllProduct();

    void deleteProduct(Integer id);

}
