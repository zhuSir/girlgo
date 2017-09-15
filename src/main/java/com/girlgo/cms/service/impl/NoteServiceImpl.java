package com.girlgo.cms.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.girlgo.cms.dao.NoteMapper;
import com.girlgo.cms.pojo.Note;
import com.girlgo.cms.service.NoteService;

@Service
public class NoteServiceImpl implements NoteService{

	@Autowired
	private NoteMapper dao;
	
	@Override
	public void saveNote(Note note) {
		dao.insertSelective(note);
	}

	@Override
	public List<Note> selectListByUser(Integer userId,Integer curPage,Integer pageSize) {
		Integer startIndex = 0; 
		if(curPage != null && curPage > 0 
				&& pageSize != null && pageSize > 0){
			startIndex = (curPage-1)*pageSize;
		}
		return dao.selectListByUserId(userId,startIndex,pageSize);
	}
	
}
