package com.girlgo.cms.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.girlgo.cms.pojo.Note;

@Repository
public interface NoteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Note record);

    int insertSelective(Note record);

    Note selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Note record);

    int updateByPrimaryKeyWithBLOBs(Note record);

    int updateByPrimaryKey(Note record);
    
    List<Note> selectListByUserId(Integer userId);
}