package com.seed.lib.util;

import lombok.Data;

@Data
public class AdbookPager {

	private Long page;
	private Long perPage=24L;
	private Long startRow;
	private Long lastRow;
	private Long perBlock=3L;
	private Long totalPage;
	
	private Long startNum;
	private Long lastNum;
	
	private boolean pre;
	private boolean next;
	
	private String search2;
	
	private Long searchType;
	private String userName;
	private String searchKeyword;
	private String libNum;	
	
	public void makeRow() {
		this.startRow = (this.getPage()-1)*perPage;		
	}
	
	public Long getPage() {
		if (this.page==null || this.page<1) {
			this.page=1L;
		}
		return this.page;
	}
	
	public String getSearch2() {
		if(this.search2==null) {
			this.search2="";
		}
		return this.search2;
	}
	
	public String getLibNum() {
		if(this.libNum==null) {
			this.libNum="";
		}
		return this.libNum;
	}
	
	public void getNum(Long totalCount) {
		//totalPage 계산
		 Long totalPage = totalCount/this.getPerPage();
		 //totalCount에서 perPage 나눴을때 0이 아니라면 totalPage는 +1
		 //ex: totalCount:122 perPage:20 -> totalPage: 6+1 
		 if(totalCount%this.getPerPage()!=0) {
			 totalPage++;
		 }
		 
		 this.totalPage = totalPage;
		 
		 if(this.getPage()>totalPage) {
			 this.setPage(totalPage);
		 }
		 //totalBlock은 페이지네이션의 총 갯수
		 Long totalBlock = totalPage/this.getPerBlock();
		//totalPage를 PerBlock으로 나눴을때 0이 아니라면 totalBlock은 +1
		 //ex: totalPage:7 perPage:5 -> totalBlock: 1+1 
		 if(totalPage%this.getPerBlock()!=0) {
			 totalBlock++;
		 }
		 
		 //curBlock: 페이지네이션의 현재 번호
		 Long curBlock = this.getPage()/this.getPerBlock();
		 if(this.getPage()%this.getPerBlock()!=0) {
			 curBlock++;
		 }
		 		 
		 this.startNum = (curBlock-1)*this.getPerBlock()+1;
		 this.lastNum = curBlock*this.getPerBlock();
		 
		 if(curBlock==totalBlock) {
			 this.lastNum = totalPage;
		 }
		 
		 if(curBlock>1) {
				pre=true;
			}
			
		if(curBlock<totalBlock) {
				next=true;
			}
		
	}
	
}
