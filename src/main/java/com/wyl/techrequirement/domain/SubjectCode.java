package com.wyl.techrequirement.domain;

public class SubjectCode {

	private Integer sub_id;
	private String code;
	private String title;

	public Integer getSub_id() {
		return sub_id;
	}

	public void setSub_id(Integer sub_id) {
		this.sub_id = sub_id;
	}

	public String getCode() {
		return code; 
	}
	
	public void setCode(String code) {
		this.code = code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "SubjectCode [sub_id=" + sub_id + ", code=" + code + ", title=" + title + "]";
	}

}
