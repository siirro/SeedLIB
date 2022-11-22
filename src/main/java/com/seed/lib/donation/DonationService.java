package com.seed.lib.donation;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seed.lib.hope.HopeVO;
import com.seed.lib.util.HdPager;

@Service
public class DonationService {
	
	@Autowired
	private DonationMapper donationMapper;
	
	@Transactional(rollbackFor = Exception.class)
	public int setDon(DonationVO donationVO, Map<String, Object> map) throws Exception{
		int result = donationMapper.setDon(donationVO);
		map.put("donNum", donationVO.getDonNum());
		if(result<0) {
			throw new Exception();
		}else {
			result = donationMapper.setDonLib(map);
			if(result<0) {
				throw new Exception();
			}else {
				result = donationMapper.setDonStat(donationVO);
				if(result<0) {
					throw new Exception();
				} else {
					return result;
				}
			}
		}
	}

	
	//마이페이지
	public List<DonationVO> getDonList(HdPager hdPager) throws Exception{
		hdPager.makeRow();
		hdPager.getNum(donationMapper.getTotalCount(hdPager));
		return donationMapper.getDonList(hdPager);
	}


}
