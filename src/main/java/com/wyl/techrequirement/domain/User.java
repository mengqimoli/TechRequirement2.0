package com.wyl.techrequirement.domain;

import java.util.HashSet;
import java.util.Set;

public class User {

	private Long userId; // 用户id
	private String userName;// 用户名
	private String userPwd;// 用户密码
	private String userZSXM; // 真实姓名
	private String userSFZ; // 身份证
	private String userYX; // 邮箱
	private String userSJ; // 手机
	private String userJGDM; // 机构代码
	private String userJGMC; // 机构名称
	private String userYZBM; // 邮政编码
	private Department department; // 部门多对一
	// 多对多：当前用户拥有的角色列表
	private Set<Role> roles = new HashSet<Role>();
	private Putunder putunder;// 归口管理部门
	private Area area;// 地域
	private String userTXDZ;// 通讯地址
	private String userDWWZ;// 单位网址
	private String userDZXX;// 电子信箱
	private String userFRDB;// 法人代表
	private String userLXR;// 联系人
	private String userGDDH;// 固定电话
	private String userYDDH;// 移动电话
	private String userCZ;// 传真
	private String userJGSX;// 机构属性
	private String userJGJJ;// 机构简介

	public User() {

	}

	public User(Long userId) {
		this.userId = userId;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserZSXM() {
		return userZSXM;
	}

	public void setUserZSXM(String userZSXM) {
		this.userZSXM = userZSXM;
	}

	public String getUserYX() {
		return userYX;
	}

	public void setUserYX(String userYX) {
		this.userYX = userYX;
	}

	public String getUserSFZ() {
		return userSFZ;
	}

	public void setUserSFZ(String userSFZ) {
		this.userSFZ = userSFZ;
	}

	public String getUserSJ() {
		return userSJ;
	}

	public void setUserSJ(String userSJ) {
		this.userSJ = userSJ;
	}

	public String getUserJGDM() {
		return userJGDM;
	}

	public void setUserJGDM(String userJGDM) {
		this.userJGDM = userJGDM;
	}

	public String getUserJGMC() {
		return userJGMC;
	}

	public void setUserJGMC(String userJGMC) {
		this.userJGMC = userJGMC;
	}

	public String getUserYZBM() {
		return userYZBM;
	}

	public void setUserYZBM(String userYZBM) {
		this.userYZBM = userYZBM;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}

	public Putunder getPutunder() {
		return putunder;
	}

	public void setPutunder(Putunder putunder) {
		this.putunder = putunder;
	}

	public Area getArea() {
		return area;
	}

	public void setArea(Area area) {
		this.area = area;
	}

	public String getUserDWWZ() {
		return userDWWZ;
	}

	public void setUserDWWZ(String userDWWZ) {
		this.userDWWZ = userDWWZ;
	}

	public String getUserDZXX() {
		return userDZXX;
	}

	public void setUserDZXX(String userDZXX) {
		this.userDZXX = userDZXX;
	}

	public String getUserFRDB() {
		return userFRDB;
	}

	public void setUserFRDB(String userFRDB) {
		this.userFRDB = userFRDB;
	}

	public String getUserLXR() {
		return userLXR;
	}

	public void setUserLXR(String userLXR) {
		this.userLXR = userLXR;
	}

	public String getUserGDDH() {
		return userGDDH;
	}

	public void setUserGDDH(String userGDDH) {
		this.userGDDH = userGDDH;
	}

	public String getUserYDDH() {
		return userYDDH;
	}

	public void setUserYDDH(String userYDDH) {
		this.userYDDH = userYDDH;
	}

	public String getUserCZ() {
		return userCZ;
	}

	public void setUserCZ(String userCZ) {
		this.userCZ = userCZ;
	}

	public String getUserJGSX() {
		return userJGSX;
	}

	public void setUserJGSX(String userJGSX) {
		this.userJGSX = userJGSX;
	}

	public String getUserJGJJ() {
		return userJGJJ;
	}

	public void setUserJGJJ(String userJGJJ) {
		this.userJGJJ = userJGJJ;
	}

	public String getUserTXDZ() {
		return userTXDZ;
	}

	public void setUserTXDZ(String userTXDZ) {
		this.userTXDZ = userTXDZ;
	}

}
