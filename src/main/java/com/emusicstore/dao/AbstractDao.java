package com.emusicstore.dao;

import java.io.Serializable;
import java.util.List;

/**
 * Created by user on 3/9/2017.
 */
public interface AbstractDao<T, PK extends Serializable> {

    T save(T t);
    T update(T t);
    void delete(T t);
    List<T> findAll();
    T getById(PK id);
    void deleteById(PK entityId);

}