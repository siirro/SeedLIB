package com.seed.lib.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.seed.lib.donation.DonationService;
import com.seed.lib.donation.DonationVO;
import com.seed.lib.hope.HopeService;
import com.seed.lib.hope.HopeVO;
import com.seed.lib.member.MemberService;
import com.seed.lib.member.MemberVO;
import com.seed.lib.util.HdPager;

import lombok.extern.slf4j.Slf4j;
import retrofit2.http.POST;

@Controller
@RequestMapping("/admin/*")
@Slf4j
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private DonationService donationService;
	
	@Autowired
	private HopeService hopeService;
	
	// 기증도서 목록 조회
	@GetMapping("donaBoList")
	public ModelAndView getDonaBoList(HdPager hdPager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<DonationVO> dl = donationService.getAdminDonList(hdPager);
		log.info("pager:{}", hdPager);		
		mv.addObject("don", dl);
		mv.addObject("pager", hdPager);
		return mv;
	}
	
	@GetMapping("donAdd")
	public ModelAndView getDonOne(DonationVO donationVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		donationVO = donationService.getDonOne(donationVO);
		mv.addObject("don", donationVO);
		return mv;
	}
	
	@PostMapping("donAdd")
	@ResponseBody
	public Map<String, Object> setDonOne(@RequestBody DonationVO donationVO)throws Exception{
		Map<String, Object> map = new HashMap<>();
		map.put("isbn", donationVO.getIsbn());
		map.put("libNum", donationVO.getLibVO().getLibNum());
		int result = donationService.setDonOne(donationVO, map);
		if(result>0) {
			map.put("result", result);
			map.put("msg", "기증도서 신청 처리를 완료했습니다");
		}else {
			map.put("result", result);
			map.put("msg", "이미 입고된 책입니다\n수량을 수정하시겠습니까?");
		}
		return map;
	}
	
	@PostMapping("updateQuantity")
	@ResponseBody
	public Map<String, Object>  updateQuantity (@RequestBody DonationVO donationVO) throws Exception{
		Map<String, Object> map = new HashMap<>();
		map.put("isbn", donationVO.getIsbn());
		map.put("libNum", donationVO.getLibVO().getLibNum());
		int result = donationService.updateQuantity(donationVO, map);
		if(result>0) {
			map.put("result", result);
			map.put("msg", "입고 도서 수량 수정 처리를 완료했습니다");
		}else {
			map.put("result", result);
			map.put("msg", "입고 도서 수량 수정 처리를 실패했습니다");
		}
		return map;
	}
	
	@PostMapping("donAddCncl")
	@ResponseBody
	public Map<String, String> setDonCncl(@RequestBody DonationVO donationVO)throws Exception{
		Map<String, String> map = new HashMap<>();
		int result = donationService.setDonCncl(donationVO);
		if(result>0) {
			map.put("msg", "신청 반려 처리했습니다");
		}else {
			map.put("msg", "존재하지 않는 신청 건입니다");
		}
		map.put("url", "/admin/donaBoList");
		return map;
	}
	
	// 희망도서 목록 조회
	@GetMapping("hopeBoList")
	public ModelAndView getHopeBoList(HdPager hdPager)throws Exception{
		ModelAndView mv = new ModelAndView();
		List<HopeVO> hl = hopeService.getAdminHopList(hdPager);
		mv.addObject("hop", hl);
		mv.addObject("pager", hdPager);
		return mv;
	}
	
	@GetMapping("hopeAdd")
	public ModelAndView getHopeOne(HopeVO hopeVO)throws Exception{
		ModelAndView mv = new ModelAndView();
		hopeVO = hopeService.getHopeOne(hopeVO);
		mv.addObject("hope", hopeVO);
		return mv;
	}
	
	@PostMapping("hopeAddCncl")
	@ResponseBody
	public Map<String, String> setHopeCncl(@RequestBody HopeVO hopeVO)throws Exception{
		Map<String, String> map = new HashMap<>();
		int result = hopeService.setHopeCncl(hopeVO);
		if(result>0) {
			map.put("msg", "신청 반려 처리했습니다");
		}else {
			map.put("msg", "존재하지 않는 신청 건입니다");
		}
		map.put("url", "/admin/hopeBoList");
		return map;
	}
	
	@PostMapping("hopeAdd")
	@ResponseBody
	public Map<String, String> setHopeOne(@RequestBody HopeVO hopeVO)throws Exception{
		Map<String, String> map = new HashMap<>();
		int result = hopeService.setHopeOne(hopeVO);
		if(result>0) {
			map.put("msg", "희망 도서 신청 처리를 완료했습니다");
		}else {
			map.put("msg", "존재하지 않는 신청 건입니다");
		}
		map.put("url", "/admin/hopeBoList");
		return map;
	}
	
	
///////////////////////////////////////////////////////////////////////////////////////////////////	
		
	// 어드민 메인 페이지
	@GetMapping("main")
	public ModelAndView getAdMain()throws Exception{
		
		ModelAndView mv = new ModelAndView();
		
		// 대쉬보드 공지사항 갯수
		int dshBodList = adminService.getDashBodListI();
		
		// 대쉬보드 회원 목록 갯수
		int dshMemList = adminService.getDashMemList();
		
		// 대쉬보드 문화프로그램 목록 갯수
		int dshProList = adminService.getDashProList();
		
		// 대보드 도서 목록 갯수
		int dshBoList = adminService.getDashBookList();
		
		mv.addObject("dshBodList", dshBodList);
		mv.addObject("dshMemList", dshMemList);
		mv.addObject("dshProList", dshProList);
		mv.addObject("dshBoList", dshBoList);
		mv.setViewName("admin/main");
		
		return mv;
	}
	
}