package com.seed.lib.studyroom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudyRoomService {
	
	@Autowired
	private StudyRoomMapper mapper;

	//스터디룸의 좌석 수 가져오기
	public List<StudyDetailVO> getSeatMany (String roomNum) throws Exception {
		return mapper.getSeatMany(roomNum);
	}
	
	//좌석 예약하기
	public int setMySeat (StudyDetailVO studyDetailVO) throws Exception {
		//사용중인 좌석인지 확인하기
		int result = mapper.getUseSeat(studyDetailVO);
		if(result>0) {
			return 111;
		}else {
			//중복 신청인지 확인하기
			result = mapper.getOverlapSeat(studyDetailVO);
			if(result>0) {
				return 222;
			}else {
				return mapper.setMySeat(studyDetailVO);
			}
		}
	}
	
	//사용중인 좌석 정보 가져오기
//	public List<StudyDetailVO> getUseSeat (String roomName) throws Exception {
//		return mapper.getUseSeat(roomName);
//	}
	
	//마이페이지에서 이용내역 확인하기
	public List<StudyDetailVO> getSeatHistory (String userName) throws Exception{
		return mapper.getSeatHistory(userName);
	}
	
	//퇴실하기
	public int exitMySeat (StudyDetailVO studyDetailVO) throws Exception{
		return mapper.exitMySeat(studyDetailVO);
	}
	
	//전체 퇴실하기
	public int changeAllSeat() throws Exception{
		return mapper.exitAllSeat();
	}	
}
