package com.wyl.techrequirement.web.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.wyl.techrequirement.domain.SubjectCode;
import com.wyl.techrequirement.service.SubjectCodeService;

public class SubjectCodeAction extends ActionSupport implements RequestAware{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private SubjectCodeService subjectCodeService;
	
	public void setSubjectCodeService(SubjectCodeService subjectCodeService) {
		this.subjectCodeService = subjectCodeService;
	}
	
	private String code;
	
	
	public void setCode(String code) {
		this.code = code;
	}
	
	public String list(){
//		System.out.println("list执行");
//		List<SubjectCode> list1 = subjectCodeService.list("0000000", 1);
//		for(SubjectCode subjectCode : list1){
//			System.out.println(subjectCode);
//		}
		request.put("subject1", subjectCodeService.list("0000000",1));
		return "list";
	}
	
	public String list1() throws IOException{
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		List<SubjectCode> list1 = subjectCodeService.list("0000000",1);
		Gson gson = new Gson();
		String json = gson.toJson(list1);
		out.print(json);
		return null;
	}
	
	public String list2() throws IOException{
//		System.out.println("list2:code::"+code);
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		List<SubjectCode> list2 = subjectCodeService.list(code, 2);
		
		Gson gson = new Gson();
		String json = gson.toJson(list2);
		out.print(json);
		return null;
	}
	
	public String list3() throws IOException{
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		List<SubjectCode> list3 = subjectCodeService.list(code, 3);
		
		Gson gson = new Gson();
		String json = gson.toJson(list3);
		out.print(json);
		return null;
	}

	private Map<String, Object> request;
	
	@Override
	public void setRequest(Map<String, Object> arg0) {

		this.request = arg0;
	}

}
