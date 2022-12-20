package com.seed.lib.board.wishboard;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seed.lib.util.Pager;

@Service
public class WishService {

	
	@Autowired
	private WishMapper wishMapper ;
	
	
	public List<WishVO> getList(Pager pager)throws Exception{
		return wishMapper.getList(pager);
	}
	
	public WishVO getDetail(WishVO wishVO)throws Exception{
		return wishMapper.getDetail(wishVO);

	}

	public int setAdd(WishVO wishVO)throws Exception{
		 int result= wishMapper.setAdd(wishVO);
		

		return result;
	}
	

	public int setUdate(WishVO wishVO)throws Exception {

		int result = wishMapper.setUpdate(wishVO);
		return result;
	}
	
	public int setDelete(WishVO wishVO)throws Exception{
		int result= wishMapper.setDelete(wishVO);
		return result;
	}
}
