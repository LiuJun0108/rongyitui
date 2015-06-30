package com.rongyitui.dao;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.Collection;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

@SuppressWarnings("unchecked")
public class HibernateDao<T, ID extends Serializable> implements IBaseDao<T, ID> {

	@Autowired
	private SessionFactory sessionFactory;
	protected Class<T> entityClass;

	public HibernateDao() {
		if (entityClass == null) {
			entityClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
		}
	}

	/**
	 * 
	 * @return session
	 */
	public Session getSession() {
		// 需要开启事物，才能得到CurrentSession
		return sessionFactory.getCurrentSession();
		// this.sessionFactory.openSession();
	}

	public void refresh(T t) {
		this.getSession().refresh(t);
	}

	public void save(T t) {
		this.getSession().save(t);
	}

	public void update(T t) {
		this.getSession().update(t);
	}

	public void saveOrUpdate(T t) {
		this.getSession().saveOrUpdate(t);
	}

	public T load(ID id) {
		T load = (T) this.getSession().load(entityClass, id);
		return load;
	}

	public T getById(ID id) {
		T load = (T) this.getSession().get(entityClass, id);
		return load;
	}

	public boolean contains(T t) {
		return this.getSession().contains(t);
	}

	public void delete(T t) {
		this.getSession().delete(t);
	}

	public boolean deleteById(ID Id) {
		T t = getById(Id);
		if (t == null) {
			return false;
		}
		delete(t);
		return true;
	}

	public void deleteAll(Collection<T> entities) {
		for (Object entity : entities) {
			this.getSession().delete(entity);
		}
	}

	public void executeHQL(String hql, Object[] values) {
		Query query = this.getSession().createQuery(hql);
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				query.setParameter(i, values[i]);
			}
		}
		query.executeUpdate();
	}

	public void executeSQL(String sqlString, Object[] values) {
		Query query = this.getSession().createSQLQuery(sqlString);
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				query.setParameter(i, values[i]);
			}
		}
		query.executeUpdate();
	}

	public T getByHQL(String hql, Object[] values) {
		Query query = this.getSession().createQuery(hql);
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				query.setParameter(i, values[i]);
			}
		}
		return (T) query.uniqueResult();
	}

	public T getBySQL(String sqlString, Object[] values) {
		Query query = this.getSession().createSQLQuery(sqlString);
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				query.setParameter(i, values[i]);
			}
		}
		return (T) query.uniqueResult();
	}

	public List<T> listByHQL(String hql) {
		return this.listByHQL(hql, null);
	}

	public List<T> listByHQL(String hql, int page, int rows) {
		return this.listByHQL(hql, null, page, rows);
	}

	public List<T> listByHQL(String hql, Object[] values) {
		Query query = this.getSession().createQuery(hql);
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				query.setParameter(i, values[i]);
			}
		}
		return query.list();
	}

	public List<T> listByHQL(String hql, Object[] values, int page, int rows) {
		Query query = this.getSession().createQuery(hql);
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				query.setParameter(i, values[i]);
			}
		}

		if (page > 0 && rows > 0) {
			int startIndex = (page - 1) * rows;
			query.setFirstResult(startIndex);
			query.setMaxResults(rows);
		}

		return query.list();
	}

	public List<T> listBySQL(String sqlString, Object[] values) {
		Query query = this.getSession().createSQLQuery(sqlString);
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				query.setParameter(i, values[i]);
			}
		}
		return query.list();
	}

	public List<T> listAll() {
		String hql = "from " + this.entityClass.getName();
		return listByHQL(hql);
	}

	public Long countByHQL(String hql, Object[] values) {
		Query query = this.getSession().createQuery(hql);
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				query.setParameter(i, values[i]);
			}
		}
		return (Long) query.uniqueResult();
	}

	public Long countAll() {
		Query query = this.getSession().createQuery("select count(*) from " + this.entityClass.getName());
		return (Long) query.uniqueResult();
	}

	public Long countByHQL(String hql) {
		Query query = this.getSession().createQuery(hql);
		return (Long) query.uniqueResult();
	}

}