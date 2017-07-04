package com.girlgo.cms.service;

import java.util.List;

import com.girlgo.cms.pojo.Note;

public interface NoteService {
	
	public void saveNote(Note note);
	
	public List<Note> selectListByUser(Integer userId);
		
}
