package com.seed.lib.hope;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seed.lib.book.BookVO;

@Service
public class HopeService {

	@Autowired
	private HopeMapper hopeMapper;

	public int getHaveBook(Map<String, Object> map) throws Exception{
		return hopeMapper.getHaveBook(map);
	}
	
	public int getOverLapBook(Map<String, Object> map) throws Exception{
		return hopeMapper.getOverLapBook(map);
	}
	
	public int getMonth(HopeVO hopeVO) throws Exception{
		return hopeMapper.getMonth(hopeVO);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int setHope(HopeVO hopeVO, Map<String, Object> map) throws Exception{
		int result = hopeMapper.setHope(hopeVO);
		map.put("hopNum", hopeVO.getHopNum());
		if(result<0) {
			throw new Exception();
		}else {
			result = hopeMapper.setHopeLib(map);
			if(result<0) {
				throw new Exception();
			}else {
				result = hopeMapper.setHopeStat(hopeVO);
				if(result<0) {
					throw new Exception();
				} else {
					return result;
				}
			}
		}
	}
	
	public int setDeleteHope(HopeVO hopeVO) throws Exception{
		return hopeMapper.setDeleteHope(hopeVO);
	}
	
	public List<HopeVO> getHopeList(String userName) throws Exception{
		return hopeMapper.getHopeList(userName);
	}
}
