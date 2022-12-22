package com.seed.lib.program;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seed.lib.admin.program.AdProgramVO;
import com.seed.lib.util.ProgramPager;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@Transactional(rollbackFor = Exception.class)
public class ProgramService {
	
	@Autowired
	private ProgramMapper programMapper;
	
	//목록
	public List<AdProgramVO> getList (ProgramPager pager) throws Exception{
		Long totalCount = programMapper.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		return programMapper.getList(pager);
	}
	
	//곧 신청 마감하는 프로그램
	public List<AdProgramVO> getSoonList (AdProgramVO apVO) throws Exception{
		return programMapper.getSoonList(apVO);
	}
	
	//상세페이지
	public AdProgramVO getDetail (AdProgramVO apVO) throws Exception{
		return programMapper.getDetail(apVO);
	}
	
	//프로그램 신청하기
	public int setAdd (MemberProgramVO mpVO) throws Exception{
		// 중복 신청 확인
			//-> 신청상태가 1,2이면 신청불가(return 2)
			//-> 신청상태 0이면 update
			//-> 아예 신청한 이력 없으면 신청가능
		int c = programMapper.getMyCount(mpVO);
		
			//신청한 적 없음
		if(c==0) {
			mpVO.setUserName(mpVO.getUserName());
			mpVO.setProNum(mpVO.getProNum());
			System.out.println(mpVO.getUserName());
			
			programMapper.setAdd(mpVO);
			return 1;
			//신청한 적 있음
		}else if(c==1){
			int p = programMapper.getMyState(mpVO);
			//신청상태가 1 -> 불가
			if(p >= 1) {
				return 2;				
			
			//신청상태가 0 -> update
			}else if (p == 0) {
				programMapper.setUpdate(mpVO);
				return 1;
			}
		}return 3;
	}
	
	//신청취소
	public int setDel (MemberProgramVO mpVO) throws Exception{
		//신청 여부 판단 - 없으면 0
		int c = programMapper.getMyCount(mpVO);
		System.out.println("%%%%%%%%%%%% : "+c);
		
		if(c == 1) {
			//신청상태가 1이면 취소 가능
			int p = programMapper.getMyState(mpVO);
			System.out.println("&&&&&&&&&&&&&& : "+p);
			programMapper.setDel(mpVO);
			return 1;	
		}
		return 0;
	}
	
	//신청상태 확인 - 1/0
	public int getMyState (MemberProgramVO mpVO) throws Exception{
		return programMapper.getMyState(mpVO);
	}
	
	//신청여부 확인 - 잇없 카운트
	public int getMyCount (MemberProgramVO mpVO) throws Exception{
		return programMapper.getMyCount(mpVO);
	}
	
	//--------------- 마이페이지 ---------------
	//신청 목록 - 신청/종료
	public List<AdProgramVO> getMyPro (ProgramPager pager) throws Exception{
		Long totalCount = programMapper.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		return programMapper.getMyPro(pager);
	}
	
	//--------------- Mapper ---------------
	public Long getCount (ProgramPager pager) throws Exception{
		return programMapper.getCount(pager);
	}

}
