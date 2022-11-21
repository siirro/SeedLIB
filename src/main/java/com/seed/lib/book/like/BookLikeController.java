package com.seed.lib.book.like;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/book/like/*")
public class BookLikeController {
	
	@Autowired
	private BookLikeService bookLikeService;

	@PostMapping("add")
	@ResponseBody
	public int addLike (MbBookLikeVO bookLikeVO) throws Exception{
		int result = bookLikeService.setLike(bookLikeVO);
		return result;
	}
	
	@PostMapping("delete")
	@ResponseBody
	public int deleteLike (MbBookLikeVO bookLikeVO) throws Exception{
		int result = bookLikeService.setUnlike(bookLikeVO);
		return result;
	}
	
}
