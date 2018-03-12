package com.wyl.techrequirement.query;

import org.apache.commons.lang.StringUtils;

import com.opensymphony.xwork2.ActionContext;
import com.wyl.techrequirement.domain.Requirement;

/**
 * 
 * 子类自己的查询条件：用户名，email，部门
 *
 */
public class RequirementQuery extends BaseQuery {

	private Long nosta;
	private Long userId;// 用户id
	private Long staId;// 状态id
	private Long stasId;// 状态id
	private Long deptId;// 管理处室id
	private Long putId;// 归口管理部门id
	private Long areaId;// 地域id
	private String reqJSXQMC;// 技术需求名称
	private String reqJGMC;// 机构名称
	private String reqJGSX;// 机构属性
	private String reqGJZ;// 关键字
	private String reqJSXQHZMS;// 技术需求合作模式
	private String reqYJLX;// 研究类型
	private String reqXKFL = "";// 学科分类
	private String reqXQJSYYHY = "";// 需求技术应用行业
	private String orderJSXQMC;// 排序技术需求名称
	private String orderXQSX;// 排序需求时限
	private String orderTBSJ;// 排序填报时间

	private String fljstj;

	public RequirementQuery() {
		super(Requirement.class.getName());
	}

	@Override
	protected void addWhere() {
		if (nosta != null) {
			addCondition("o.state.staId!=?", nosta);
		}
		if (userId != null) {
			addCondition("o.user.userId=?", userId);
		}
		if (staId != null && staId != -1L) {
			addCondition("o.state.staId=?", staId);
		}
		if (stasId != null && stasId != -1L) {
			addCondition("o.state.staId=?", stasId);
		}
		if (deptId != null && deptId != -1L) {
			addCondition("o.department.deptId=?", deptId);
		}
		if (putId != null && putId != -1L) {
			addCondition("o.putunder.putId=?", putId);
		}
		if (areaId != null && areaId != -1L) {
			addCondition("o.area.areaId=?", areaId);
		}
		if (StringUtils.isNotBlank(reqJSXQMC)) {
			addCondition("o.reqJSXQMC like ?", "%" + reqJSXQMC + "%");
		}
		if (StringUtils.isNotBlank(reqJGMC)) {
			addCondition("o.reqJGMC like ?", "%" + reqJGMC + "%");
		}
		if (StringUtils.isNotBlank(reqJGSX)) {
			addCondition("o.reqJGSX like ?", "%" + reqJGSX + "%");
		}
		if (StringUtils.isNotBlank(reqGJZ)) {
			addCondition("o.reqGJZ like ?", "%" + reqGJZ + "%");
		}
		if (StringUtils.isNotBlank(reqJSXQHZMS)) {
			addCondition("o.reqJSXQHZMS like ?", "%" + reqJSXQHZMS + "%");
		}
		if (StringUtils.isNotBlank(reqYJLX)) {
			addCondition("o.reqYJLX like ?", "%" + reqYJLX + "%");
		}
		System.out.println(reqXKFL);
		if (!", ,".equals(reqXKFL) && reqXKFL != null) {
			addCondition("o.reqXKFL like ?", "%" + reqXKFL + "%");
		}
		System.out.println(reqXQJSYYHY);
		if (!", ,".equals(reqXQJSYYHY) && reqXQJSYYHY != null) {
			addCondition("o.reqXQJSYYHY like ?", "%" + reqXQJSYYHY + "%");
		}
		System.out.println("orderJSXQMC  " + orderJSXQMC);
		if (!"".equals(orderJSXQMC) && orderJSXQMC != null) {
			limitHql.append(" order by o.reqJSXQMC " + orderJSXQMC + "");
		}
		System.out.println("orderXQSX  " + orderXQSX);
		if (!"".equals(orderXQSX) && orderXQSX != null) {
			limitHql.append(" order by o.reqQSXQNF " + orderXQSX + "");
		}
		System.out.println("orderTBSJ  " + orderTBSJ);
		if (!"".equals(orderTBSJ) && orderTBSJ != null) {
			limitHql.append(" order by o.reqNum " + orderTBSJ + "");
		}
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getStaId() {
		return staId;
	}

	public void setStaId(Long staId) {
		this.staId = staId;
	}

	public Long getDeptId() {
		return deptId;
	}

	public void setDeptId(Long deptId) {
		this.deptId = deptId;
	}

	public Long getPutId() {
		return putId;
	}

	public void setPutId(Long putId) {
		this.putId = putId;
	}

	public Long getAreaId() {
		return areaId;
	}

	public void setAreaId(Long areaId) {
		this.areaId = areaId;
	}

	public String getReqJSXQMC() {
		return reqJSXQMC;
	}

	public void setReqJSXQMC(String reqJSXQMC) {
		this.reqJSXQMC = reqJSXQMC;
	}

	public String getReqJGMC() {
		return reqJGMC;
	}

	public void setReqJGMC(String reqJGMC) {
		this.reqJGMC = reqJGMC;
	}

	public String getReqJGSX() {
		return reqJGSX;
	}

	public void setReqJGSX(String reqJGSX) {
		this.reqJGSX = reqJGSX;
	}

	public String getReqGJZ() {
		return reqGJZ;
	}

	public void setReqGJZ(String reqGJZ) {
		this.reqGJZ = reqGJZ;
	}

	public String getReqJSXQHZMS() {
		return reqJSXQHZMS;
	}

	public void setReqJSXQHZMS(String reqJSXQHZMS) {
		this.reqJSXQHZMS = reqJSXQHZMS;
	}

	public String getReqYJLX() {
		return reqYJLX;
	}

	public void setReqYJLX(String reqYJLX) {
		this.reqYJLX = reqYJLX;
	}

	public String getOrderJSXQMC() {
		return orderJSXQMC;
	}

	public void setOrderJSXQMC(String orderJSXQMC) {
		this.orderJSXQMC = orderJSXQMC;
	}

	public Long getNosta() {
		return nosta;
	}

	public void setNosta(Long nosta) {
		this.nosta = nosta;
	}

	public String getOrderXQSX() {
		return orderXQSX;
	}

	public void setOrderXQSX(String orderXQSX) {
		this.orderXQSX = orderXQSX;
	}

	public Long getStasId() {
		return stasId;
	}

	public void setStasId(Long stasId) {
		this.stasId = stasId;
	}

	public String getOrderTBSJ() {
		return orderTBSJ;
	}

	public void setOrderTBSJ(String orderTBSJ) {
		this.orderTBSJ = orderTBSJ;
	}

	public String getReqXKFL() {
		return reqXKFL.trim();
	}

	public void setReqXKFL(String reqXKFL) {
		this.reqXKFL = reqXKFL.trim();
	}

	public String getReqXQJSYYHY() {
		return reqXQJSYYHY.trim();
	}

	public void setReqXQJSYYHY(String reqXQJSYYHY) {
		this.reqXQJSYYHY = reqXQJSYYHY.trim();
	}

	public String getFljstj() {
		return fljstj.trim();
	}

	public void setFljstj(String fljstj) {
		this.fljstj = fljstj.trim();
	}

	@Override
	public String toString() {
		return "RequirementQuery [nosta=" + nosta + ", userId=" + userId + ", staId=" + staId + ", stasId=" + stasId
				+ ", deptId=" + deptId + ", putId=" + putId + ", areaId=" + areaId + ", reqJSXQMC=" + reqJSXQMC
				+ ", reqJGMC=" + reqJGMC + ", reqJGSX=" + reqJGSX + ", reqGJZ=" + reqGJZ + ", reqJSXQHZMS="
				+ reqJSXQHZMS + ", reqYJLX=" + reqYJLX + ", reqXKFL=" + reqXKFL + ", reqXQJSYYHY=" + reqXQJSYYHY
				+ ", orderJSXQMC=" + orderJSXQMC + ", orderXQSX=" + orderXQSX + ", orderTBSJ=" + orderTBSJ + ", fljstj="
				+ fljstj + "]";
	}

}
