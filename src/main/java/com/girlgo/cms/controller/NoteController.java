package com.girlgo.cms.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.girlgo.cms.pojo.Note;
import com.girlgo.cms.pojo.User;
import com.girlgo.cms.service.NoteService;

import net.sf.json.JSONArray;

@Controller
@RequestMapping("/note")
public class NoteController {
	
	@Autowired
	private NoteService servcice;

	@RequestMapping("/to/list")
	public String getNoteList(HttpServletRequest request,ModelMap map){
		User user = (User) request.getServletContext().getAttribute("user");
		if(user != null){
			List<Note> res = servcice.selectListByUser(user.getId(),1,5);
			JSONArray resArr = JSONArray.fromObject(res);
			map.addAttribute("res",resArr.toString());
			return "/noteList";
		}else{
			return "redirect:/user/to/login";
		}
	}
	
	@RequestMapping("/detail")
	public String getNoteDetail(HttpServletRequest request){
		User user = (User) request.getServletContext().getAttribute("user");
		if(user != null){
			return "/noteDetail";
		}else{
			return "redirect:/user/to/login";
		}
	}
	
	@RequestMapping("/save")
	public String saveNote(@RequestParam("file") MultipartFile file,HttpServletRequest request,Note obj) throws IOException{
		User user = (User) request.getServletContext().getAttribute("user");
		if(user == null){
			return "redirect:/user/to/login";
		}
		if(StringUtils.isEmpty(obj.getContent())){
			return "/noteDetail";
		}
		Long filesize = file.getSize();
		if(filesize > 0){			
			String resourcesPath = "/resources/upload_img/";
			String path = request.getServletContext().getRealPath("/")+resourcesPath;
			String fileName = file.getOriginalFilename();
			SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmss");
			Date date = new Date();
			fileName = sdf.format(date)+fileName.substring(fileName.lastIndexOf("."),fileName.length());
			path = path+fileName;
			File saveFile = new File(path);
			BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(saveFile));
			bos.write(file.getBytes());
			bos.close();
			obj.setImgPath(resourcesPath+fileName);
		}
		obj.setUserId(user.getId());
		servcice.saveNote(obj);
		return "redirect:/note/to/list";
	}
	
	@RequestMapping(value="/list")
	@ResponseBody
	public String getNote(HttpServletRequest request,ModelMap map,Integer curPage){
		User user = (User) request.getServletContext().getAttribute("user");
		List<Note> res = null;
		if(user != null){
			res = servcice.selectListByUser(user.getId(),curPage,5);
		}else{
			res = servcice.selectListByUser(null,curPage,5);
		}
		JSONArray resArr = JSONArray.fromObject(res);
		return resArr.toString();
	}
	
}
