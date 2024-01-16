package DAO;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.mysql.cj.xdevapi.Result;

import model.Encode;
import model.User;
import util.HibernateUlti;

public class UserDAO implements DAOInterface<User> {

	@Override
	public User selectbyId(User user) {
		SessionFactory sessionFactory = HibernateUlti.getSessionFactory();
		User result = null;
		try {
			if (sessionFactory != null) {
				Session session = sessionFactory.openSession();
				try {
					Transaction transaction = session.beginTransaction();
					String hql = "from User u where u.userId = :user_id";
					Query query = session.createQuery(hql);
					query.setParameter("user_id", user.getUserId());
					result = (User) query.getSingleResult();
					transaction.commit();
				} catch (HibernateException e) {
					e.printStackTrace();
				} finally {
					if (session != null) {
						session.close();
					}
					sessionFactory.close();
				}
			}
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public List selectAll() {
		// TODO Auto-generated method stub
		throw new UnsupportedOperationException("Unimplemented method 'selectAll'");
	}

	@Override
	public int insert(User obj) {
		SessionFactory sessionFactory = HibernateUlti.getSessionFactory();
		try {
			if (sessionFactory != null) {
				Session session = sessionFactory.openSession();
				try {
					Transaction transaction = session.beginTransaction();
					session.save(obj.getClass().getName(), obj);
					transaction.commit();
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					session.close();
					sessionFactory.close();
				}

			}
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public User SelectByUsernameAndPassword(String username, String password) {
		User result = null;
		SessionFactory sessionFactory = HibernateUlti.getSessionFactory();
		try {
			if (sessionFactory != null) {
				Session session = sessionFactory.openSession();
				try {

					Transaction transaction = session.beginTransaction();
					String hql = "from User u where u.userName = :username and u.password = :password";
					Query query = session.createQuery(hql);
					query.setParameter("username", username);
					query.setParameter("password", Encode.toSHA1(password));
					try {
						result = (User) query.getSingleResult();
					} catch (NoResultException e) {
						e.printStackTrace();
						result = null;
					}
					transaction.commit();
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					session.close();
				}
			}
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int insertAll(ArrayList<User> list) {
		// TODO Auto-generated method stub
		throw new UnsupportedOperationException("Unimplemented method 'insertAll'");
	}

	@Override
	public int update(User obj) {
		// TODO Auto-generated method stub
		throw new UnsupportedOperationException("Unimplemented method 'update'");
	}

	@Override
	public int updateAll(ArrayList<User> list) {
		// TODO Auto-generated method stub
		throw new UnsupportedOperationException("Unimplemented method 'updateAll'");
	}

	@Override
	public int insertOrUpdate(User obj) {
		// TODO Auto-generated method stub
		throw new UnsupportedOperationException("Unimplemented method 'insertOrUpdate'");
	}

	@Override
	public int insertOrUpdateAll(ArrayList<User> list) {
		// TODO Auto-generated method stub
		throw new UnsupportedOperationException("Unimplemented method 'insertOrUpdateAll'");
	}

	@Override
	public int delete(User obj) {
		// TODO Auto-generated method stub
		throw new UnsupportedOperationException("Unimplemented method 'delete'");
	}

	@Override
	public int deleteAll(ArrayList<User> list) {
		// TODO Auto-generated method stub
		throw new UnsupportedOperationException("Unimplemented method 'deleteAll'");
	}

	public UserDAO() {
		// TODO Auto-generated constructor stub
	}

	public static UserDAO getInstance() {
		return new UserDAO();
	}
}
