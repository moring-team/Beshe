package com.bishe.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.bishe.entity.Student;
import com.bishe.dao.BaseDao;

@Repository
public class StuDaoImpl extends BaseDao<Student>{
	@Resource
	private SessionFactory sessionFactory;
	

		/**
		 * 添加用户角色项
		 * @param urr
		 * @return
		 * @throws Exception
		 */
		public int saveStu(Student stu)throws Exception {
			SessionFactory sessionFactory = super.getSessionFactory();
			sessionFactory.getCurrentSession().save(stu);
			
			return stu.getstuId();
			
		}
		
		public Student findById(int stuId) throws Exception{
			return this.get(stuId);
		}

}
