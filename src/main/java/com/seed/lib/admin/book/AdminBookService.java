package com.seed.lib.admin.book;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.seed.lib.book.BookVO;
import com.seed.lib.util.AdbookPager;

@Service
public class AdminBookService {

	@Autowired
	private AdminBookMapper adminBookMapper;
	
	// 도서 목록 조회
	public List<BookVO> getAdBookList(AdbookPager adbookPager)throws Exception{
		adbookPager.makeRow();
		adbookPager.getNum(adminBookMapper.getAdBookTotalCount(adbookPager));
		return adminBookMapper.getAdBookList(adbookPager);
	}
	
	// 도서 등록
	@Transactional(rollbackFor = Exception.class)
	public int setBookAdd(BookVO bookVO, Map<String, Object> map)throws Exception{
		int result = adminBookMapper.isHaveBook(map);
		if(result>0) {
			result = adminBookMapper.getHaveBook(map);
			if(result>0) {
				return 0;					
				} 			
			} else {
				bookVO.setIsbn(bookVO.getIsbn());
				bookVO.setTitle(bookVO.getTitle());
				bookVO.setWriter(bookVO.getWriter());
				bookVO.setPublisher(bookVO.getPublisher());
				bookVO.setBookDate(bookVO.getBookDate());
				bookVO.setCategory(bookVO.getCategory());
				bookVO.setImage(bookVO.getImage());
				bookVO.setNum(adminBookMapper.bookCount()+1L);
				result = adminBookMapper.setBookAdd(bookVO);
				if(result<1) {
					throw new Exception();
				}
			}
			result = adminBookMapper.setLibOne(map);
				if(result<1) {
					throw new Exception();
				} else {
					return result;
				}
			}	
	
	//수량 추가
	public int updateQuantity(BookVO bookVO, Map<String, Object> map) throws Exception{
		int result = adminBookMapper.updateQuantity(map);
		if(result<0) {
			throw new Exception();
		}else {
				return result;
			}
		}
	
	//도서 수정
	public int setBookUpdate(BookVO bookVO) throws Exception{
		return adminBookMapper.setBookUpdate(bookVO);
	}
	
	//도서 삭제
	public int setBookDelete(String isbn) throws Exception{
		return adminBookMapper.setBookDelete(isbn);
	}

}
