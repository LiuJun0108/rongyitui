package com.rongyitui.dao;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

public interface IBaseDao<T, ID extends Serializable> {

	public abstract void save(T t);

	public abstract void saveOrUpdate(T t);

	public abstract T load(ID id);

	public abstract T getById(ID id);

	public abstract boolean contains(T t);

	public abstract void delete(T t);

	public abstract boolean deleteById(ID Id);

	public abstract void deleteAll(Collection<T> entities);

	public abstract void executeHQL(String hql, Object[] values);

	public abstract void executeSQL(String hql, Object[] values);

	public abstract T getByHQL(String hql, Object[] values);

	public abstract T getBySQL(String hql, Object[] values);

	public abstract List<T> listByHQL(String hql, Object[] values);

	public abstract List<T> listBySQL(String hql, Object[] values);

	public abstract void refresh(T t);

	public abstract void update(T t);

	public abstract Long countByHQL(String hql, Object[] values);

	public abstract List<T> listByHQL(String hql, int page, int rows);

	public abstract Long countByHQL(String hql);

	public abstract List<T> listByHQL(String hql);

	public abstract List<T> listAll();

	public abstract Long countAll();

	public abstract List<T> listByHQL(String hql, Object[] values, int page,
			int rows);

}