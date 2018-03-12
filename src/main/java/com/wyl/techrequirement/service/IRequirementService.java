package com.wyl.techrequirement.service;

import java.util.List;

import com.wyl.techrequirement.domain.Requirement;

public interface IRequirementService extends IBaseService<Requirement>{

	String findReqNum();
	
	List<Requirement> findByjiansuo(String hql);
	
	
}
