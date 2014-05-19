package data.dao;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Example;
import org.hibernate.criterion.Projections;

import domain.core.webservice.util.Page;


public class HibernateDataContext implements IHibernateDataContext {

	private static Log log = LogFactory.getLog(HibernateDataContext.class);
	private Session session;
	private Transaction tran;
	private org.hibernate.SessionFactory sessionFactory;

	// private boolean IsInTransaction;

	// public void setIsInTransaction(boolean isInTransaction) {
	// IsInTransaction = isInTransaction;
	// }

	public org.hibernate.SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(org.hibernate.SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public HibernateDataContext() {
		session = null;
		tran = null;
	}
	
	public HibernateDataContext(org.hibernate.SessionFactory sesFactoy)
	{
		this.sessionFactory = sesFactoy;
		session = this.sessionFactory.openSession();
		tran = null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#save(java.lang.Object)
	 */

	public void save(Object item) {
		// TODO Auto-generated method stub
		log.debug("saving item");
		if (item == null) {
			log.debug("item is null");
			throw (new NullPointerException());
		}
		boolean tranFlag = false;
		if (!IsInTransaction()) {
			this.BeginTransaction();
			tranFlag = true;
		}

		session.save(item);

		if (!IsInTransaction() || tranFlag) {
			try {

				this.Commit();
				// session.flush();
				log.debug("save successful");
			} catch (RuntimeException re) {
				this.Rollback();
				log.error("save failed", re);
				throw re;
			}
		}

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#delete(java.lang.Object)
	 */

	public void delete(Object item) {
		// TODO Auto-generated method stub
		log.debug("deleting item");
		if (item == null) {
			log.debug("item is null");
			throw (new NullPointerException());
		}
		boolean tranFlag = false;
		if (!IsInTransaction()) {
			this.BeginTransaction();
			tranFlag = true;
		}

		session.delete(item);

		if (!IsInTransaction() || tranFlag) {
			try {
				this.Commit();
				// session.flush();
				log.debug("delete successful");
			} catch (RuntimeException re) {
				this.Rollback();
				log.error("delete failed", re);
				throw re;
			}
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#update(java.lang.Object)
	 */

	public void update(Object item) {
		// TODO Auto-generated method stub
		log.debug("updateing item");
		if (item == null) {
			log.debug("item is null");
			throw (new NullPointerException());
		}
		boolean tranFlag = false;
		if (!IsInTransaction()) {
			this.BeginTransaction();
			tranFlag = true;
		}

		session.update(item);
		
		if (!IsInTransaction() || tranFlag) {
			try {
				this.Commit();
				// session.flush();
				log.debug("update successful");
			} catch (RuntimeException re) {
				this.Rollback();
				log.error("update failed", re);
				throw re;
			}
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#findById(java.lang.Class,
	 * java.lang.String)
	 */
	@SuppressWarnings("unchecked")
	public <T> T findById(Class<T> clazz, Serializable id) {
		log.debug("getting Object instance with id: " + id);
		try {
			// T t=clazz.newInstance();
			return (T) session.get(clazz, id);
			// return t;
		} catch (RuntimeException re) {
			log.error("findById failed", re);
			throw re;
		}

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#findByExample(java.lang.Object)
	 */

	public <T> List<T> findByExample(Object instance) {
		log.debug("finding instance instance by example");
		try {
			@SuppressWarnings("unchecked")
			List<T> results = getSession().createCriteria(instance.getClass())
					.add(Example.create(instance)).list();
			// .createCriteria("Student")
			// .add(Example.create(instance))

			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#findByProperty(java.lang.Class,
	 * java.lang.String, java.lang.Object)
	 */

	@SuppressWarnings("unchecked")
	public <T> List<T> findByProperty(Class<T> clazz, String propertyName,
			Object value) {
		log.debug("finding Student instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from " + clazz.getName()
					+ " as model where model." + propertyName + "= ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, value);
			// System.out.print("HQL:"+queryString+"\n");
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#findAll(java.lang.Class)
	 */

	@SuppressWarnings("unchecked")
	public <T> List<T> findAll(Class<T> clazz) {
		log.debug("finding all object instances");
		try {
			String queryString = "from " + clazz.getName();
			Query queryObject = getSession().createQuery(queryString);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#findAll(java.lang.Class, int, int)
	 */
	@SuppressWarnings("unchecked")
	public <T> List<T> findAll(Class<T> clazz, int pageIndex, int pageSize) {
		log.debug("finding all object instances");
		try {
			String queryString = "from " + clazz.getName();
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setFirstResult(pageIndex);
			queryObject.setMaxResults(pageSize);
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#merge(java.lang.Class, java.lang.Object)
	 */

	public <T> T merge(Class<T> clazz, Object detachedInstance) {
		log.debug("merging object instance");
		if (detachedInstance == null) {
			log.debug("item is null");
			throw (new NullPointerException());
		}
		boolean tranFlag = false;
		if (!IsInTransaction()) {
			this.BeginTransaction();
			tranFlag = true;
		}
		@SuppressWarnings("unchecked")
		T result = (T) session.merge(detachedInstance);
		if (!IsInTransaction() || tranFlag) {
			try {
				this.Commit();
				// session.flush();
				log.debug("merge successful");
			} catch (RuntimeException re) {
				this.Rollback();
				log.error("merge failed", re);
				throw re;
			}
		}
		return result;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#getCount(java.lang.Class)
	 */
	public <T> int getCount(Class<T> clazz) {
		Criteria criteria = session.createCriteria(clazz);
		criteria.setProjection(Projections.rowCount()).uniqueResult();
		criteria.setProjection(null);
		criteria.list();
		return criteria.list().size();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#attachDirty(java.lang.Object)
	 */

	public void attachDirty(Object item) {

		log.debug("attaching dirty object instance");
		if (item == null) {
			log.debug("item is null");
			throw (new NullPointerException());
		}
		boolean tranFlag = false;
		if (!IsInTransaction()) {
			this.BeginTransaction();
			tranFlag = true;
		}

		session.saveOrUpdate(item);

		if (!IsInTransaction() || tranFlag) {
			try {
				this.Commit();
				// session.flush();
				log.debug("attach successful");
			} catch (RuntimeException re) {
				this.Rollback();
				log.error("attach failed", re);
				throw re;
			}
		}

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#attachClean(java.lang.Object)
	 */

	public void attachClean(Object item) {

		log.debug("attaching clean object instance");
		if (item == null) {
			log.debug("item is null");
			throw (new NullPointerException());
		}
		boolean tranFlag = false;
		if (!IsInTransaction()) {
			this.BeginTransaction();
			tranFlag = true;
		}

		session.lock(item, LockMode.NONE);

		if (!IsInTransaction() || tranFlag) {
			try {
				this.Commit();
				// session.flush();
				log.debug("attach successful");
			} catch (RuntimeException re) {
				this.Rollback();
				log.error("attach failed", re);
				throw re;
			}
		}

	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#getSession()
	 */

	public Session getSession() {

		if (this.session != null) {
			return this.session;
		} else {
			return HibernateSessionFactory.getSession();
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#IsInTransaction()
	 */
	public boolean IsInTransaction() {
		return tran != null && tran.isActive();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#BeginTransaction()
	 */
	public void BeginTransaction() {
		log.debug("Begin a transaction");
		if (IsInTransaction()) {
			log.debug("A transaction is already opened");
			throw (new IllegalStateException("A transaction is already opened"));
		} else {
			try {
				tran = session.beginTransaction();
				log.debug("Openning a transaction  successful");
			} catch (HibernateException ex) {
				log.error("Open a transaction  Error");
				throw (ex);
			}
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#Commit()
	 */
	public void Commit() {
		if (!IsInTransaction()) {
			log.debug("Operation requires an active transaction");
			throw (new IllegalStateException(
					"Operation requires an active transaction"));
		} else {
			try {
				tran.commit();
				log.debug("Commit successful");
			} catch (HibernateException ex) {
				log.error("Commit a transaction  Error");
				throw (ex);
			}
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#Rollback()
	 */
	public void Rollback() {
		if (!IsInTransaction()) {
			log.debug("Operation requires an active transaction");
			throw (new IllegalStateException(
					"Operation requires an active transaction"));
		} else {
			try {
				tran.rollback();
				log.debug("rollback successful");
			} catch (HibernateException ex) {
				log.error("rollback a transaction  Error");
				throw (ex);
			}
		}
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see dao.IHibernateDataContext#IsDirty()
	 */
	public boolean IsDirty() {
		return session.isDirty();
	}

	@SuppressWarnings("unchecked")
	public <T> List<T> findByPropertyFuzzyQuery(Class<T> clazz,
			String propertyName, Object value) {
		log.debug(" FuzzyQueryfinding  instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from " + clazz.getName()
					+ " as model where model." + propertyName + "like  ?";
			Query queryObject = getSession().createQuery(queryString);
			queryObject.setParameter(0, "%" + value + "%");
			return queryObject.list();
		} catch (RuntimeException re) {
			log.error(" FuzzyQueryfinding find by property name failed", re);
			throw re;
		}
	}
	
	
	@SuppressWarnings("unchecked")
	public <T> List<T> findListBySQL(Class<T> clazz, String sql) {
		// TODO Auto-generated method stub
		List<T> list = null;
		Query queryObject = null;
		try {

			String SQLString = sql;
			queryObject = session.createSQLQuery(SQLString).addEntity(clazz);
			list = (List<T>) queryObject.list();

		} catch (Exception e) {
			// TODO: handle exception
			list = null;
			e.printStackTrace();
			log.error(e);
		}
		return list;
	}

	
	@SuppressWarnings("unchecked")
	public <T> Page<T> findPageBySQL(Class<T> clazz, String sql, int pageSize,
			int currentPage) {
		// TODO Auto-generated method stub

		Page<T> page = new Page<T>();

		Query queryObject = null;

		try {
			String SQLString = sql;
			queryObject = session.createSQLQuery(SQLString).addEntity(clazz);
		} catch (Exception e) {
			// TODO: handle exception
			log.error(e);
		}

		List<T> al = new ArrayList<T>();

		int allRow = queryObject.list().size(); // ��ѯ������Ϣ����
		
		if (allRow != 0) {
			page.setCurrentPage(currentPage);// ��ǰҳ
			page.setAllRow(allRow);// ��Ϣ������
			page.setTotalPage(Page.countTotalPage(pageSize, allRow));// ҳ��
			if (currentPage < 1) {
				currentPage = 1;
			}
			if (currentPage > page.getTotalPage()) {
				currentPage = page.getTotalPage();
			}
			int index = (currentPage - 1) * pageSize;
			queryObject.setFirstResult(index);
			queryObject.setMaxResults(pageSize);
			al = (List<T>) queryObject.list();
			page.setList(al);
			page.setPageSize(pageSize);
		}
		session.clear();
		return page;
	}
}
