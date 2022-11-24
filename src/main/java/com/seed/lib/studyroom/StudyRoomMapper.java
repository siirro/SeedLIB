package com.seed.lib.studyroom;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StudyRoomMapper {

	public List<StudyDetailVO> getSeatMany (String roomName) throws Exception;
	
	public int getUseSeat (StudyDetailVO studyDetailVO) throws Exception;
	
	public int getOverlapSeat (StudyDetailVO studyDetailVO) throws Exception;
	
	public int setMySeat (StudyDetailVO studyDetailVO) throws Exception; 
	
	public List<StudyDetailVO> getSeatHistory (String userName) throws Exception;
	
}
