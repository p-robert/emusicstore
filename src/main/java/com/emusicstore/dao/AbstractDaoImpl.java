package com.emusicstore.dao;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

/**
 * Created by user on 3/9/2017.
 */
@Repository
@Transactional
public abstract class AbstractDaoImpl<T,PK extends Serializable> implements AbstractDao<T, PK>{


    protected Class<T> entityClass;

    @Autowired
    protected SessionFactory sessionFactory;

    public AbstractDaoImpl() {
        ParameterizedType genericSuperclass = (ParameterizedType) getClass()
                .getGenericSuperclass();
        this.entityClass = (Class<T>) genericSuperclass
                .getActualTypeArguments()[0];
    }

    private Session getSession(){
        return sessionFactory.getCurrentSession();
    }

    public T save(T t) {
        getSession().persist(t);
        return t;
    }

    public T getById(PK key) {
        return (T) getSession().get(getEntityClass(),key);
    }

    public void delete(T t) {
        getSession().delete(t);
    }
    protected Criteria createEntityCriteria(){
        return getSession().createCriteria(entityClass);
    }
    public List<T> findAll() {
        Criteria criteria = createEntityCriteria();
        criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
        List<T> results = criteria.list();
        return results;
    }

    public abstract Class<T> getEntityClass();

    public T update(T t) {
        getSession().update(t);
        return t;
    }

    public void deleteById(PK entityId) {
        T t = getById(entityId);
        getSession().delete(t);
    }
}
