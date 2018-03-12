package com.wyl.techrequirement.service;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.wyl.techrequirement.domain.Permission;
import com.wyl.techrequirement.query.PageList;
import com.wyl.techrequirement.query.PermissionQuery;

public class PermissionServiceTest extends BaseServiceTest{
	
	@Autowired
	IPermissionService permissionService;

	@Test
	public void test() throws Exception {
		List<Permission> list = permissionService.findByLoginUserId(1L);
		for (Permission permission : list) {
			System.out.println(permission.getPerName());
		}
	}
	
	@Test
	public void query() throws Exception {
		PermissionQuery baseQuery = new PermissionQuery();
		// 如果用户传入负数怎样处理
		baseQuery.setPageSize(5);
		// baseQuery.setCurrentPage(-10);
		// 如果用户传入页码超过总的页数
		// baseQuery.setCurrentPage(1);
		// ......
		// 查询条件
		// baseQuery.setPermisssionName("1");
		// baseQuery.setPermisssionJGMC("1");

		PageList pageList = permissionService.findByQuery(baseQuery);

		System.out.println(pageList.getRows());
	}
	
	@Test
	public void save() throws Exception {
		String msg  = "";
		Permission permission = new Permission();
		permission.setPerName("qweqwe");
		permissionService.save(permission);
	}
	
	
	@Test
	public void update() throws Exception{
		Permission permission =permissionService.get(9L);
		permission.setPerName("李四");
		permissionService.update(permission);
	}
	
	@Test
	public void delete() throws Exception{
		permissionService.delete(9L);
	}

}
