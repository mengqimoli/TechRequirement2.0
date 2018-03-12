package com.wyl.techrequirement.web.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;
import com.wyl.techrequirement.domain.Area;
import com.wyl.techrequirement.domain.Putunder;
import com.wyl.techrequirement.domain.User;
import com.wyl.techrequirement.service.IAreaService;
import com.wyl.techrequirement.service.IPutunderService;
import com.wyl.techrequirement.service.IUserService;
import com.wyl.techrequirement.web.action.common.MD5;

public class ModifyAction extends CRUDAction<User> {
	private IUserService userService;// setter
	private IPutunderService putunderService;// setter
	private IAreaService areaService;// setter
	private User user;
	private Long userId;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public void setPutunderService(IPutunderService putunderService) {
		this.putunderService = putunderService;
	}

	public void setAreaService(IAreaService areaService) {
		this.areaService = areaService;
	}

	@Override
	protected void list() throws Exception {
	}

	@Override
	public String input() throws Exception {
		putContext("allPuts", putunderService.getAll());
		putContext("allAreas", areaService.getAll());
		return INPUT;
	}

	@Override
	@InputConfig(methodName = Action.INPUT)
	public String save() throws Exception {
		Putunder putunder = user.getPutunder();
		Area area = user.getArea();
		if (putunder != null && putunder.getPutId() == -1) {
			user.setPutunder(null);
		}
		if (area != null && area.getAreaId() == -1) {
			user.setArea(null);
		}
		userService.update(user);
		return SUCCESS;
	}

	@Override
	public String delete() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void prepareInput() throws Exception {
		user = userService.get(getLoginUser().getUserId());
	}

	@Override
	public void prepareSave() throws Exception {
		if (userId != null) {
			user = userService.get(userId);
			user.setArea(null);
			user.setPutunder(null);
		} else {
			user = new User();
		}
	}

	@Override
	public User getModel() {
		return user;
	}

	public String xgmm() throws Exception {
		return "xgmm";
	}

	private String newPwd;
	private String newPwd1;

	public String getNewPwd() {
		return newPwd;
	}

	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}

	public String getNewPwd1() {
		return newPwd1;
	}

	public void setNewPwd1(String newPwd1) {
		this.newPwd1 = newPwd1;
	}

	// ajax修改密码
	public String pwd() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		try {
			if (newPwd == null || newPwd == "") {
				out.print(false);
			} else {
				User user = userService.get(getLoginUser().getUserId());
				user.setUserPwd(newPwd);
				userService.update(user);
				out.print(true);
			}
		} catch (Exception e) {
			e.printStackTrace();
			out.print(false);
		}
		return "xgmm";
	}

	// ajax验证旧密码是否正确
	private String oldPwd;

	public String getOldPwd() {
		return oldPwd;
	}

	public void setOldPwd(String oldPwd) {
		this.oldPwd = oldPwd;
	}

	public String checkPwd() throws Exception {
		HttpServletResponse response = ServletActionContext.getResponse();
		PrintWriter out = response.getWriter();
		User user = userService.get(getLoginUser().getUserId());
		oldPwd = MD5.md5(oldPwd);
		if (!oldPwd.equals(user.getUserPwd())) {
			out.print(false);
		} else {
			out.print(true);
		}
		return NONE;
	}

	// ajax验证有户名是否重复
	private String userName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String checkName() throws Exception {
		System.out.println("checkName:" + userName);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		System.out.println(userId);
		// 修改:如果没有修改用户名就不用验证
		// 根据id获取原来的用户名(数据库里面的用户名)
		User oldUser = userService.get(userId);
		System.out.println(oldUser.getUserName());
		String olduserName = oldUser.getUserName();
		if (olduserName.equals(userName)) {
			// 没有改用户名，不需要验证
			out.print(true);
		} else {
			out.print(userService.findByName(userName));
		}
		return NONE;
	}

}
