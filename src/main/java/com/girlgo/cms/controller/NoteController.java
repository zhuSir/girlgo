package com.girlgo.cms.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	@RequestMapping("/note-list")
	public String getNoteList(HttpServletRequest request,ModelMap map){
		User user = (User) request.getServletContext().getAttribute("user");
		if(user != null){
			List<Note> res = servcice.selectListByUser(user.getId());
			JSONArray resArr = JSONArray.fromObject(res);
			map.addAttribute("res",resArr.toString());
			return "/noteList";
		}else{			
			return "redirece:/user/to_login";
		}
	}
	
	@RequestMapping("/note-detail")
	public String getNoteDetail(){
		return "/noteDetail";
	}
	
	@RequestMapping("/note-save")
	public String saveNote(@RequestParam("file") MultipartFile file,HttpServletRequest request,Note obj) throws IOException{
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
		User user = (User) request.getServletContext().getAttribute("user");
		if(user != null){			
			obj.setUserId(user.getId());
			obj.setImgPath(resourcesPath+fileName);
			servcice.saveNote(obj);
		}else{
			return "redirect:/user/to_login";
		}
		return "redirect:note-list";
	}
	
}
