package com.seed.lib.studyroom;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StudyRoomMapper {

	public List<StudyDetailVO> getSeatMany (String roomName) throws Exception;
	
	public List<StudyDetailVO> getUseSeat (String roomName) throws Exception;
	
}
