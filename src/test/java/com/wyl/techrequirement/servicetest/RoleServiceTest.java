package com.wyl.techrequirement.servicetest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.wyl.techrequirement.domain.Role;
import com.wyl.techrequirement.query.PageList;
import com.wyl.techrequirement.query.RoleQuery;
import com.wyl.techrequirement.service.IRoleService;

public class RoleServiceTest extends BaseServiceTest{

	@Autowired
	IRoleService roleService;
	
	/*
	 * 添加角色测试
	 */
	@Test
	public void save() throws Exception{
		Role role = new Role();
		role.setRoleName("sdfasfd");
		roleService.save(role);
	}
	/*
	 * 编辑角色测试
	 */
	@Test
	public void update() throws Exception{
		Role role = roleService.get(7L);
		role.setRoleName("111111");
		roleService.update(role);
	}
	/*
	 * 删除角色测试
	 */
	@Test
	public void delete() throws Exception{
		roleService.delete(7L);
	}
	
	/*
	 * 查询角色
	 */
	@Test
	public void query() throws Exception{
		RoleQuery baseQuery = new RoleQuery();
		baseQuery.setPageSize(5);
		baseQuery.setRoleName("用户");;
		PageList pageList = roleService.findByQuery(baseQuery);
		System.out.println(pageList.getRows());
	}
}
