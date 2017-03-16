package com.emusicstore.dao;

import com.emusicstore.model.Product;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by user on 3/7/2017.
 */
@Repository
@Transactional
public class ProductDaoImpl extends AbstractDaoImpl<Product,String> implements ProductDao {

    @Override
    public void addProduct(Product product) {
        save(product);
    }

    @Override
    public Product getProductById(String id) {
        return getById(id);
    }


    @Override
    public List<Product> getAllProduct() {
        return findAll();
    }

    @Override
    public void deleteProduct(String id) {
        deleteById(id);
    }

    @Override
    public Class<Product> getEntityClass() {
        return Product.class;
    }
}
