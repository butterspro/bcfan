package com.BcFan.util;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class PageBean implements Serializable{
	private int pageIndex=1;//椤甸潰鏁�
	private int pageSize;//椤甸潰澶у皬
	private int totalCount;//鎬绘潯鏁�
	private int totalPage;//鎬婚〉鏁�
	private List list=new ArrayList();
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		if(pageIndex<=0){
			this.pageIndex=1;
		}else{
			this.pageIndex = pageIndex;
		}
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage() {
		//int a=b>c?1:2
		this.totalPage = this.totalCount%this.pageSize==0?this.totalCount/this.pageSize:this.totalCount/this.pageSize+1;
		
		/*if(this.totalCount%this.pageSize==0){
			this.totalPage=this.totalCount/this.pageSize;
		}else{
			this.totalPage=this.totalCount/this.pageSize+1;
		}*/
		
	}
	//璧峰
	public int startRow(){
		return (this.pageIndex-1)*this.pageSize;
	}
	
}
