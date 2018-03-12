package com.wyl.techrequirement.service;

import org.junit.Test;

import com.wyl.techrequirement.web.action.common.MD5;

public class MD5Test {

	@Test
	public void test(){
		System.out.println(MD5.md5("444444"));
	}
}
