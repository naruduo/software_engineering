package com.se.dao;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.se.util.HibernateUtil;
import com.se.util.Page;

/*
 * 通过类的反射机制来造轮子
 * entityClazz	实体类型对象
 * entity		实体对象
 * getSimpleName()获取类名
 */
@SuppressWarnings({"unchecked", "rawtypes"})
public class BaseDAO<T> {

	// 新增记录
	// 返回是否成功增加
	public Boolean add(T entity) {
		Session session = HibernateUtil.getSession();
		session.save(entity);
		HibernateUtil.closeSession();
		return true;
	}

	// 按id删除记录
	public Boolean delete(Class<T> entityClazz, Serializable id) {
		Session session = HibernateUtil.getSession();
		T t = session.get(entityClazz, id);
		System.out.println(t);
		session.delete(t);
		HibernateUtil.closeSession();
		return true;
	}

	// 获取记录数
	public Long getTotal(Class<T> entityClazz) {
		String hql = "SELECT count(*) FROM " + entityClazz.getSimpleName();
		Session session = HibernateUtil.getSession();
		Query query = session.createQuery(hql);
		Long result = (Long) query.uniqueResult();
		session.close();
		return result;
	}

	// 按页获取部分实体
	/*
	 * start 起始id count 实体数目
	 */
	public List<T> list(Class<T> entityClazz, Integer start, Integer count) {
		Session session = HibernateUtil.getSession();
		String hql = "FROM " + entityClazz.getSimpleName();
		Query query = session.createQuery(hql);
		query.setFirstResult(start).setMaxResults(count);
		return query.list();
	}

	/*
	 * 主要解决更新操作只要更新部分数据问题
	 */
	public Integer executeHql(String hql, Object... parms) {
		Integer result = 0;
		Session session = HibernateUtil.getSession();
		Query query = session.createQuery(hql);
		Transaction transaction = session.beginTransaction();
		try {
			// 设置参数
			for (int i = 0; i < parms.length; ++i) {
				query.setParameter(i, parms[i]);
				result += query.executeUpdate();
				if (i % 20 == 0) {
					session.flush();
				}
			}
			transaction.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			transaction.rollback();
			return -1;
		}
		return result;
	}

	// 新增记录
	// 返回是否成功增加
	public void save(T entity) {
		HibernateUtil.getSession().save(entity);
	}

	// 按id删除记录
	public void deleteById(Class<T> entityClazz, Serializable id) {
		String hql = "DELETE " + entityClazz.getSimpleName() + " en " + "WHERE en.id=:id";
		Query query = HibernateUtil.getSession().createQuery(hql);
		query.setParameter("id", id);
		query.executeUpdate();
	}

	// 按对象删除记录
	public void delete(T entity) {
		HibernateUtil.getSession().delete(entity);
	}

	// 更新
	public void update(T entity) {
		Session session = HibernateUtil.getSession();
		// 实例对象状态由游离态变为持久态
		session.saveOrUpdate(entity);
		HibernateUtil.closeSession();
	}

	// 获取记录数
	public Long countTotal(Class<T> entityClazz) {
		String hql = "SELECT count(*) FROM " + entityClazz.getSimpleName();
		Session session = HibernateUtil.getSession();
		Query query = session.createQuery(hql);
		return (Long) query.uniqueResult();
	}

	// 根据id加载对象
	public T get(Class<T> entityClazz, Serializable id) {
		return HibernateUtil.getSession().get(entityClazz, id);
	}

	// 获取全部实体
	public List<T> list(Class<T> entityClazz) {
		String hql = "SELECT en FROM " + entityClazz.getSimpleName() + " en";
		Query query = HibernateUtil.getSession().createQuery(hql);
		return query.list();
	}

	// 按页获取部分实体
	/*
	 * start 起始id count 实体数目
	 */
	public List<T> listByPage(Class<T> entityClazz, Integer pageStart, Integer pageSize) {
		String hql = "FROM " + entityClazz.getSimpleName();
		Query query = HibernateUtil.getSession().createQuery(hql);
		query.setFirstResult(pageStart);
		query.setMaxResults(pageSize);
		return query.list();
	}
	
	/**
	 * 按页及外键获取部分实体
	 * @param fkName 外键名称
	 * @param fkValue 外键值
	 * @param p 页信息
	 * @return 该页实体信息
	 */
	public List<T> listByPageAndFKey(Class<T> entityClazz, String fkName, Integer fkValue, Page p) {
		String hql = "FROM " + entityClazz.getSimpleName() + " en";
		//添加搜索限制
		hql += " WHERE " + "en." + fkName + "=?1";
		Query query = HibernateUtil.getSession().createQuery(hql);
		query.setParameter(1, fkValue);
		p.setTotal(query.list().size());
		query.setFirstResult(p.getStart()).setMaxResults(p.getCount());
		//返回查询结果
		return query.list();
	}

}
