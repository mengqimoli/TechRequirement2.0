package com.wyl.techrequirement.service;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.wyl.techrequirement.domain.Role;
import com.wyl.techrequirement.query.PageList;
import com.wyl.techrequirement.query.RoleQuery;
import com.wyl.techrequirement.domain.Role;
import com.wyl.techrequirement.domain.Role;

public class RoleServiceTest extends BaseServiceTest{
	
	@Autowired
	IRoleService roleService;

	@Test
	public void test() throws Exception {
		List<Role> list = roleService.getroleName(1L);
		for (Role role : list) {
			System.out.println(role);
		}
	}
	
	@Test
	public void query() throws Exception {
		RoleQuery baseQuery = new RoleQuery();
		// 如果用户传入负数怎样处理
		baseQuery.setPageSize(5);
		// baseQuery.setCurrentPage(-10);
		// 如果用户传入页码超过总的页数
		// baseQuery.setCurrentPage(1);
		// ......
		// 查询条件
		// baseQuery.setRoleName("1");
		// baseQuery.setRoleJGMC("1");

		PageList pageList = roleService.findByQuery(baseQuery);

		System.out.println(pageList.getRows());
	}
	
	@Test
	public void save() throws Exception {
		String msg  = "";
		Role role = new Role();
		role.setRoleName("qweqwe");
		roleService.save(role);
	}
	
	
	@Test
	public void update() throws Exception{
		Role role =roleService.get(6L);
		role.setRoleName("李四");
		roleService.update(role);
	}
	
	@Test
	public void delete() throws Exception{
		roleService.delete(6L);
	}
}
