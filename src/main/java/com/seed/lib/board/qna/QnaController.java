package com.seed.lib.board.qna;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seed.lib.member.MemberVO;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

	
	@GetMapping("list")
	public String getList()throws Exception{
		return "qna/list";
	}
}
