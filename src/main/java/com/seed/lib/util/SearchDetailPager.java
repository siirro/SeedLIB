package com.seed.lib.util;

import lombok.Data;

@Data
public class SearchDetailPager extends Pager{
	
	private String searchTitle;
	private String searchWriter;
	private String searchPublisher;
	private Long searchISBN;
	private Long searchDate1;
	private Long searchDate2;
	private String searchCategory;
	
	public String getSearchTitle() {
		if(this.searchTitle==null) {
			this.searchTitle="";
		}
		return searchTitle;
	}
	public String getSearchWriter() {
		if(this.searchWriter==null) {
			this.searchWriter="";
		}
		return searchWriter;
	}
	public String getSearchPublisher() {
		if(this.searchPublisher==null) {
			this.searchPublisher="";
		}
		return searchPublisher;
	}
	public Long searchISBN() {
		if(this.searchISBN==null) {
			this.searchISBN=null;
		}
		return searchISBN;
	}
	
	public Long getSearchDate1() {
		if(this.searchDate1==null) {
			this.searchDate1=null;
		}
		return searchDate1;
	}
	
	public Long getSearchDate2() {
		if(this.searchDate2==null) {
			this.searchDate2=null;
		}
		return searchDate2;
	}
	public String searchCategory() {
		if(this.searchCategory==null) {
			this.searchCategory="";
		}
		return searchCategory;
	}

}
