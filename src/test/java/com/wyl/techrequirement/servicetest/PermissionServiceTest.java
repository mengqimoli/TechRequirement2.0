package com.wyl.techrequirement.servicetest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.wyl.techrequirement.domain.Permission;
import com.wyl.techrequirement.query.PageList;
import com.wyl.techrequirement.query.PermissionQuery;
import com.wyl.techrequirement.service.IPermissionService;

public class PermissionServiceTest extends BaseServiceTest{
	@Autowired
	IPermissionService permissionService;
	
	/*
	 * 添加权限测试
	 */
	@Test
	public void save() throws Exception{
		Permission permission = new Permission();
		permission.setPerName("wwwww");
		permissionService.save(permission);
	}
	/*
	 * 编辑权限测试
	 */
	@Test
	public void update() throws Exception{
		Permission permission = permissionService.get(10L);
		permission.setPerText("iisaiudhfiu");
		permissionService.update(permission);
	}
	/*
	 * 删除权限测试
	 */
	@Test
	public void delete() throws Exception{
		permissionService.delete(10L);
	}
	/*
	 * 权限查询
	 */
	@Test
	public void query() throws Exception{
		PermissionQuery baseQuery = new PermissionQuery();
		baseQuery.setPerName("用户");
		PageList pageList = permissionService.findByQuery(baseQuery);
		System.out.println(pageList.getRows());
	}

}
