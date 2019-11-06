package com.guoruifeng.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mmcro.utils.StringUtils;

@Controller
public class TestController {
	@RequestMapping("tojsp")
	public String tojsp(){
		return "test";
	}
	@RequestMapping("getdata")
	public String getData(String str){
		String html=StringUtils.toHtml(str);
		System.out.println("html is"+html);
		return "test";
		
	}
	@RequestMapping("check")
	@ResponseBody
	public boolean check(String str){
		System.out.println("==========="+str);
		return StringUtils.hasText(str);
		
	}
}
