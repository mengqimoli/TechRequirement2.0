package com.wyl.techrequirement.servicetest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableLoadTimeWeaving;
import org.springframework.util.Assert;

import com.wyl.techrequirement.domain.Department;
import com.wyl.techrequirement.domain.User;
import com.wyl.techrequirement.query.PageList;
import com.wyl.techrequirement.query.UserQuery;
import com.wyl.techrequirement.service.IDepartmentService;
import com.wyl.techrequirement.service.IPermissionService;
import com.wyl.techrequirement.service.IUserService;
import com.wyl.techrequirement.web.action.common.MD5;

public class UserServiceTest extends BaseServiceTest {

	@Autowired
	IUserService userService;
	IDepartmentService departmentService;
	IPermissionService permissionService;

	/*
	 * 登录测试
	 */
	@Test
	public void login() throws Exception {
		String username = "444444";
		String password = "123456";
		User user = userService.findByLogin(username, MD5.md5(password));
		Assert.hasText(user.getUserName(), "用户名或密码错误");
	}

	/*
	 * 注册测试
	 */
	@Test
	public void register() throws Exception {
		User user = new User();
		user.setUserName("skdfhksss");
		user.setUserZSXM("李四");
		user.setUserSFZ("513901199611254411");
		user.setUserYX("65498@163.com");
		user.setUserYDDH("15231254874");
		user.setUserJGDM("00000011");
		user.setUserJGMC("石家庄铁道大学软工系公司");
		user.setUserYZBM("050043");
		userService.save(user);
	}

	/*
	 * 添加用户测试
	 */
	@Test
	public void save() throws Exception {
		Department dir1 = new Department();
		dir1.setDeptId(12L);
		Department dir2 = new Department();
		dir2.setDeptId(10L);
		for (int i = 1; i < 20; i++) {
			User user = new User();
			user.setUserName("用户1" + i);
			if (i % 2 == 0) {
				user.setDepartment(dir1);
			} else {
				user.setDepartment(dir2);
			}
			userService.save(user);
		}
	}
	
	/*
	 * 编辑用户测试
	 */
	@Test
	public void update() throws Exception{
		User user = userService.get(375L);
		user.setUserName("赵六");
		user.setUserPwd("qqqqqq");
		userService.update(user);
	}
	
	/*
	 * 删除用户
	 */
	@Test
	public void delete() throws Exception{
		userService.delete(406L);
	}
	
	/*
	 * 查询用户测试
	 */
	@Test
	public void query() throws Exception{
		UserQuery baseQuery = new UserQuery();
		baseQuery.setPageSize(5);
		baseQuery.setUserName("用户");
		PageList pageList = userService.findByQuery(baseQuery);
		System.out.println(pageList.getRows());
	}
	
}
