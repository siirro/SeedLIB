package com.seed.lib.util;

import java.sql.Date;

import lombok.Data;

@Data
public class BookLoanPager {
	
	private Long page;
	private Long startNum;
	private Long lastNum;
	private Long startRow;
	private Long lastRow;
	private Long perPage;
	private Long perBlock;
	
	private boolean pre;
	private boolean next;
	
	private int rtStatus;
	private String userName;
	
	//제목 OR 작가
	private String select;
	
	//검색어
	private String search;	
	
	//정렬
	private String sort;
	
	//정렬 기준
	private String sortHow;
	
	//기간 검색
	private Long dateA;
	private Long dateB;
	
	public BookLoanPager() {
		this.perPage=9L;
		this.perBlock=5L;
	}
	
	//1. mapper에서 사용할 값 계산
	public void getRowNum()throws Exception{
		this.startRow = ((this.getPage()-1)*this.getPerPage()+1)-1;
		this.lastRow = this.getPage()*this.getPerPage();
	}
	
	//2. Jsp에서 사용할 값 계산
	public void getNum(Long totalCount)throws Exception{
		//2. totalCount로 totalPage구하기 ex)100
		Long totalPage=totalCount/this.getPerPage();
		if(totalCount%this.getPerPage() != 0) {
			totalPage++;
		}
		
		//2_1 totalPage보다 page가 더 클 경우
		if(this.getPage()>totalPage) {
			this.setPage(totalPage);
		}
		
		//3. totalPage로 totalBlock 구하기
		Long totalBlock = totalPage/this.getPerBlock();
		if(totalPage%this.getPerBlock() != 0) {
			totalBlock++;
		}
		
		//4. page로 curBlock 찾기
		Long curBlock = this.getPage()/this.getPerBlock();
		if(this.getPage()%this.getPerBlock() != 0) {
			curBlock++;
		}
		
		//5. curBlock으로 startNum , lastNum 구하기
		this.startNum = (curBlock-1)*this.getPerBlock()+1;
		this.lastNum = curBlock*this.getPerBlock();
		
		//6. curBlock이 마지막block(totalBlock과 같을 때)
		if(curBlock==totalBlock) {
			this.lastNum=totalPage;
		}
		
		//7. 이전, 다음 블럭의 유무
		if(curBlock>1) {
			pre=true;
		}
		
		if(curBlock<totalBlock) {
			next=true;
		}
	}
	
	
	public Long getPerPage() {
		if(this.perPage==null) {
			this.perPage=10L;
		}
		return perPage;
	}

	public Long getPage() {
		if(this.page==null || this.page<1) {
			this.page=1L;
		}
		return page;
	}
	
	
	public String getSelect() {
		if(this.select==null) {
			this.select="";
		}
		return select;
	}
	
	public String getSort() {
		if(this.sort==null) {
			this.sort="";
		}
		return sort;
	}
	
	public String getSearch() {
		if(this.search==null) {
			this.search="";
		}
		return search;
	}
	
	public Long getDateA() {
		if(this.dateA==null) {
			this.dateA=null;
		}
		return dateA;
	}
	
	public Long getDateB() {
		if(this.dateB==null) {
			this.dateB=null;
		}
		return dateB;
	}
	
	public String getsortHow() {
		if(this.sortHow==null) {
			this.sortHow="";
		}
		return sortHow;
	}


}
