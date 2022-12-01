package com.seed.lib.studyroom;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface LockerMapper {
	
	//사물함 총 개수 가져오기
	public List<LockerVO> getLockerCount() throws Exception;
	
	//사물함 사용 중인지 확인
	public int getUseLocker(LockerVO lockerVO) throws Exception;

	//사물함 중복 신청인지 확인(1인 1개만 사용 가능)
	public int getOverlapLocker(LockerVO lockerVO) throws Exception;
	
	//사물함 신청
	public int setMyLocker(LockerVO lockerVO) throws Exception;
}
