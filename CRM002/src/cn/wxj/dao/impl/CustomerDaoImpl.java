package cn.wxj.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.orm.hibernate5.HibernateCallback;

import cn.wxj.dao.CustomerDao;
import cn.wxj.domain.Customer;

public class CustomerDaoImpl extends BaseDaoImpl<Customer> implements CustomerDao {

	@Override
	@SuppressWarnings("all")
	public List<Object[]> getIndustryCount() {
		// 原生SQL查询
		List<Object[]> list = getHibernateTemplate().execute(new HibernateCallback<List>() {
			String sql = "SELECT                       " + "bd.dict_item_name,             "
					+ "COUNT(*) total                 " + "FROM                           "
					+ "cst_customer c,                " + "base_dict bd                   "
					+ "WHERE                          " + "c.cust_industry = bd.dict_id   "
					+ "GROUP BY                       " + "c.cust_industry                ";

			@Override
			public List doInHibernate(Session session) throws HibernateException {
				SQLQuery query = session.createSQLQuery(sql);
				return query.list();
			}
		});
		return list;

	}

	@Override
	public List<Object[]> getSourceCount() {
		// 原生SQL查询
		List<Object[]> list = getHibernateTemplate().execute(new HibernateCallback<List>() {
			String sql = "SELECT                       " + "bd.dict_item_name,             "
					+ "COUNT(*) total                 " + "FROM                           "
					+ "cst_customer c,                " + "base_dict bd                   "
					+ "WHERE                          " + "c.cust_source = bd" +
					".dict_id   "
					+ "GROUP BY                       " + "c.cust_source                ";

			@Override
			public List doInHibernate(Session session) throws HibernateException {
				SQLQuery query = session.createSQLQuery(sql);
				return query.list();
			}
		});
		return list;
	}

}
