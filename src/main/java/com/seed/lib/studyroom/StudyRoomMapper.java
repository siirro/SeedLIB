package com.seed.lib.studyroom;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StudyRoomMapper {

	public List<StudyDetailVO> getSeatMany (String roomNum) throws Exception;
	
	public int getUseSeat (StudyDetailVO studyDetailVO) throws Exception;
	
	public int getOverlapSeat (StudyDetailVO studyDetailVO) throws Exception;
	
	public int setMySeat (StudyDetailVO studyDetailVO) throws Exception; 
	
	public List<StudyDetailVO> getSeatHistory (String userName) throws Exception;
	
	public int exitMySeat (StudyDetailVO studyDetailVO) throws Exception;
	
}
