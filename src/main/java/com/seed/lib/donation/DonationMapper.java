package com.seed.lib.donation;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.seed.lib.hope.HopeVO;
import com.seed.lib.util.HdPager;

@Mapper
public interface DonationMapper {

	//신청
	public int setDon(DonationVO donationVO) throws Exception;
	public int setDonStat(DonationVO donationVO) throws Exception;
	public int setDonLib(Map<String, Object> map) throws Exception;
	
	//마이페이지
	public Long getTotalCount(HdPager hdPager) throws Exception;
	public List<DonationVO> getDonList(HdPager hdPager) throws Exception;

}
