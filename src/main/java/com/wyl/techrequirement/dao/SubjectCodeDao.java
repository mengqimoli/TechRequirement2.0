package com.wyl.techrequirement.dao;

import java.sql.SQLException;
import java.util.List;

import javax.swing.plaf.synth.SynthStyle;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.wyl.techrequirement.domain.SubjectCode;

public class SubjectCodeDao extends HibernateDaoSupport {

	// 没有条件参数的可以使用此方法
	public List findCacheByHql(final String hql) {
		return getHibernateTemplate().executeWithNativeSession(new HibernateCallback<List>() {
			public List doInHibernate(Session session) throws HibernateException, SQLException {
				Query query = session.createQuery(hql);
				// 查询缓存生效
				query.setCacheable(true);
				return query.list();
			}
		});
	}

	@SuppressWarnings("unchecked")
	public List<SubjectCode> list(String code) {
		String hql = "FROM SubjectCode sub where sub.code like '" + code + "'";
		List<SubjectCode> list = getSession().createQuery(hql).list();
		// for (SubjectCode subjectCode : list) {
		// System.out.println(subjectCode);
		// }
		return getSession().createQuery(hql).list();
	}

	public SubjectCode strXKFL(Integer code) {
		String hql = "select o from SubjectCode o where o.code = '" + code + "'";
		List<SubjectCode> list = getSession().createQuery(hql).list();
		if (list.size() > 0) {// 必须判断size
			return list.get(0);
		}
		return null;
	}

}
