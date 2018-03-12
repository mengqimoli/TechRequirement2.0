package com.wyl.techrequirement.service;

import java.util.List;

import com.wyl.techrequirement.dao.SubjectCodeDao;
import com.wyl.techrequirement.domain.SubjectCode;

public class SubjectCodeService {
	
	private SubjectCodeDao subjectCodeDao;
	
	public void setSubjectCodeDao(SubjectCodeDao subjectCodeDao) {
		this.subjectCodeDao = subjectCodeDao;
	}
	
	public SubjectCode strXKFL(Integer code){
		return subjectCodeDao.strXKFL(code);
	}
	
	public List<SubjectCode> list(String code,int i){
		if(i == 1){
			code = "%%00000";
		}else if(i == 2){
			code = code.substring(0, 2);
			code += "%%%00";
			System.out.println(code);
		}else if(i == 3){
			code = code.substring(0, 5);
			code += "%%";
		}
		return subjectCodeDao.list(code);
//		return null;
	}

}
