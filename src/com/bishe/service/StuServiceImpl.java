package com.bishe.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bishe.dao.StuDaoImpl;
import com.bishe.entity.Student;


@Service
@Transactional(readOnly=false)
public class StuServiceImpl {

	@Resource
	private StuDaoImpl stuDaoImpl;
	
	public int registerUser(Student u) throws Exception{
		this.stuDaoImpl.save(u);
		return u.getstuId();
	}
	
}
