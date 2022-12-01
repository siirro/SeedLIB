package com.seed.lib.studyroom;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LockerService {

	@Autowired
	private LockerMapper mapper;
		
		public List<LockerVO> getLockerCount() throws Exception{
			return mapper.getLockerCount(); 
		}
		

		public int getUseLocker(LockerVO lockerVO) throws Exception{
			return mapper.getUseLocker(lockerVO);
		}


		public int getOverlapLocker(LockerVO lockerVO) throws Exception{
			return mapper.getOverlapLocker(lockerVO);
		}

		public int setMyLocker(LockerVO lockerVO) throws Exception{
			return mapper.setMyLocker(lockerVO);  
		}

}
