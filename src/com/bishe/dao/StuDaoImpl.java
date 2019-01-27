package com.bishe.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.bishe.entity.Student;
import com.bishe.dao.BaseDao;

@Repository
public class StuDaoImpl extends BaseDao<Student>{

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

}
