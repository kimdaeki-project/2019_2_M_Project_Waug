package com.wg.p1.util;

public class Pager {

	private Integer curPage;//현재 페이지번호
	private Integer perPage;//페이지 당 글 갯수
	
	//DB
	private Integer startRow;//시작 rownum
	private Integer lastRow;//마지막 rownum
	
	//View(jsp)
	private Integer startNum; //시작 번호
	private Integer lastNum; //끝 번호
	private Integer totalPage;
	
	public Integer getStartNum() {
		return startNum;
	}
	public void setStartNum(Integer startNum) {
		this.startNum = startNum;
	}
	public Integer getLastNum() {
		return lastNum;
	}
	public void setLastNum(Integer lastNum) {
		this.lastNum = lastNum;
	}
	
	public Integer getCurPage() {
		if(curPage == null || curPage == 0)
			curPage = 1;
		return curPage;
	}
	public void setCurPage(Integer curPage) {
		this.curPage = curPage;
	}
	public Integer getPerPage() {
		if(perPage == null || perPage ==0)
			perPage=10;
		return perPage;
	}
	public void setPerPage(Integer perPage) {
		this.perPage = perPage;
	}
	public Integer getStartRow() {
		return startRow;
	}
	public void setStartRow(Integer startRow) {
		this.startRow = startRow;
	}
	public Integer getLastRow() {
		return lastRow;
	}
	public void setLastRow(Integer lastRow) {
		this.lastRow = lastRow;
	}
	
	//makeRow
	public void makeRow() {
		this.startRow = (this.getCurPage()-1)*this.getPerPage()+1;
		this.lastRow = this.getCurPage()*this.getPerPage();
	}
	
	//makePage
	public void makePage(int totalCount) {
		
		//2.전체 페이지 수 구하지
		totalPage = totalCount / this.getPerPage();
		if(totalCount%this.getPerPage() != 0)
			totalPage++;
		
	}
	public Integer getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(Integer totalPage) {
		this.totalPage = totalPage;
	}

}

