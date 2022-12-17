package com.seed.lib.donation;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seed.lib.book.BookVO;
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
	
	//어드민
	public List<DonationVO> getAdminDonList(HdPager hdPager) throws Exception{
		hdPager.makeRow();
		hdPager.getNum(donationMapper.getAdminTotalCount(hdPager));
		return donationMapper.getAdminDonList(hdPager);
	}
	
	public DonationVO getDonOne(DonationVO donationVO) throws Exception{
		return donationMapper.getDonOne(donationVO);
	}
	
	public int setDonCncl(DonationVO donationVO) throws Exception{
		return donationMapper.setDonCncl(donationVO);
	}
	
	@Transactional(rollbackFor = Exception.class)
	public int setDonOne(DonationVO donationVO, Map<String, Object> map) throws Exception{
		int result = donationMapper.isHaveBook(map);
			if(result>0) {
				result = donationMapper.getHaveBook(map);
				if(result>0) {
					return 0;					
				} 			
			} else {
				BookVO bookVO = new BookVO();
				bookVO.setIsbn(donationVO.getIsbn());
				bookVO.setTitle(donationVO.getDonTitle());
				bookVO.setWriter(donationVO.getDonWriter());
				bookVO.setPublisher(donationVO.getDonPublisher());
				bookVO.setBookDate(donationVO.getDonYear());
				bookVO.setCategory(donationVO.getCategory());
				bookVO.setImage(donationVO.getImage());
				bookVO.setNum(donationMapper.bookCount()+1L);
				result = donationMapper.setDonOne(bookVO);
			}
				result = donationMapper.setLibOne(map);
				if(result<1) {
					throw new Exception();
				}else {
					result = donationMapper.setAdminDonStat(donationVO);
					if(result<1) {
						throw new Exception();
					} else {
						return result;
					}
				}
			}
	
	public int updateQuantity(DonationVO donationVO, Map<String, Object> map) throws Exception{
		int result = donationMapper.updateQuantity(map);
		if(result<0) {
			throw new Exception();
		}else {
			result = donationMapper.setAdminDonStat(donationVO);
			if(result<0) {
				throw new Exception();
			} else {
				return result;
			}
		}
	}


}
