package com.girlgo.cms.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping()
public class IndexController {

	@RequestMapping(value="/index")
	public String index(HttpServletRequest request,ModelMap map){
		return "redirect:/note/to/list";
	}
	
	@RequestMapping(value="/")
	public String toIndex(HttpServletRequest request){
		return "redirect:/note/to/list";
	}
}
