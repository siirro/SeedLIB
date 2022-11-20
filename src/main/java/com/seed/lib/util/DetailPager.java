package com.seed.lib.util;

import lombok.Data;

@Data
public class DetailPager {
	
	private Long page;
	private Long startNum;
	private Long lastNum;
	private Long startRow;
	private Long lastRow;
	private Long perPage;
	private Long perBlock;
	
	private boolean pre;
	private boolean next;
	
	public DetailPager () {
		this.perPage = 5L;
		this.perBlock = 3L;
	}
	
	
	public void getRowNum()throws Exception{
		this.startRow = (this.getPage()-1)*this.getPerPage()+1;
		this.lastRow = this.getPage()*this.getPerPage();
	}
			
	
	public void getNum(Long totalCount)throws Exception{
		Long totalPage=totalCount/this.getPerPage();
		if(totalCount%this.getPerPage() != 0) {
			totalPage++;
		}
		if(this.getPage()>totalPage) {
			this.setPage(totalPage);
		}
		
		Long totalBlock = totalPage/this.getPerBlock();
		if(totalPage%this.getPerBlock() != 0) {
			totalBlock++;
		}
		
		Long curBlock = this.getPage()/this.getPerBlock();
		if(this.getPage()%this.getPerBlock() != 0) {
			curBlock++;
		}
				
		this.startNum = (curBlock-1)*this.getPerBlock()+1;
		this.lastNum = curBlock*this.getPerBlock();
		
		if(curBlock==totalBlock) {
			this.lastNum=totalPage;
		}
				
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
	}
