package com.seed.lib.studyroom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudyRoomService {
	
	@Autowired
	private StudyRoomMapper mapper;

	//스터디룸의 좌석 수 가져오기
	public List<StudyDetailVO> getSeatMany (String roomName) throws Exception {
		return mapper.getSeatMany(roomName);
	}
	
	//사용중인 좌석 정보 가져오기
//	public List<StudyDetailVO> getUseSeat (String roomName) throws Exception {
//		return mapper.getUseSeat(roomName);
//	}
	
}
