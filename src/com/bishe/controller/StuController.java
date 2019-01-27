package com.bishe.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bishe.entity.Student;
import com.bishe.service.StuServiceImpl;

@Controller
@RequestMapping("/student")
public class StuController {
	@Resource
	private StuServiceImpl stuServiceImpl;

	@RequestMapping(value="/registe",method=RequestMethod.POST)
	public void  regist(Model model) throws Exception{
		Student stu = null;
		stuServiceImpl.registerUser(stu);
		model.addAttribute("info", "registeErro");
	}
}
