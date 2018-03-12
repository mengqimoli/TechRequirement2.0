package com.wyl.techrequirement.service;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;

import com.wyl.techrequirement.domain.Department;
import com.wyl.techrequirement.domain.User;
import com.wyl.techrequirement.query.PageList;
import com.wyl.techrequirement.query.UserQuery;
import com.wyl.techrequirement.web.action.common.MD5;

public class UserServiceTest extends BaseServiceTest {
	@Autowired
	IUserService userService;
	IDepartmentService departmentService;
	IPermissionService permissionService;

	@Test
	public void list() throws Exception {
		User loginUser = userService.findByLogin("1", "1");
		System.out.println(loginUser);
	}

	@Test
	public void save() throws Exception {

		Department dir1 = new Department();
		dir1.setDeptId(10L);

		Department dir2 = new Department();
		dir2.setDeptId(8L);

		for (int i = 1; i < 55; i++) {
			User user = new User();
			user.setUserName("用户" + i);
			if (i % 2 == 0) {
				user.setDepartment(dir1);
			} else {
				user.setDepartment(dir2);
			}
			userService.save(user);
		}

	}

	@Test
	public void query() throws Exception {
		UserQuery baseQuery = new UserQuery();
		// 如果用户传入负数怎样处理
		baseQuery.setPageSize(5);
		// baseQuery.setCurrentPage(-10);
		// 如果用户传入页码超过总的页数
		// baseQuery.setCurrentPage(1);
		// ......
		// 查询条件
		// baseQuery.setUserName("1");
		// baseQuery.setUserJGMC("1");

		PageList pageList = userService.findByQuery(baseQuery);

		System.out.println(pageList.getRows());
	}

	@Test
	public void login() throws Exception {
		String username = "444444";
		String password = "123456";
		User user = userService.findByLogin(username, MD5.md5(password));
		Assert.hasText(user.getUserName(), "用户名或密码错误");
	}
	
	@Test
	public void register() throws Exception {
		String msg  = "";
		User user = new User();
		user.setUserName("fhsdfjdshj");
		user.setUserZSXM("张三");
		user.setUserSFZ("513901199510236611");
		user.setUserYX("842389033@qq.com");
		user.setUserYDDH("15230805966");
		user.setUserJGDM("0000001");
		user.setUserJGMC("河北石铁大");
		user.setUserYZBM("050043");
		userService.save(user);
	}
	
	@Test
	public void update() throws Exception{
		User user =userService.get(375L);
		user.setUserName("李四");
		user.setUserPwd("qqqqqq");
		userService.update(user);
	}
	
	@Test
	public void delete() throws Exception{
		userService.delete(385L);
	}

}
