package com.wyl.techrequirement.query;

import java.util.ArrayList;
import java.util.List;

/**
 * 
 * 把查询后结果全部封装到PageList
 *
 */
public class PageList {
	// 当前页码
	private int currentPage = 1;
	// 一页显示条数
	private int pageSize = 10;
	// 总的条数
	private int totalCount;
	// 总的页数：计算出来
	private int totalPage;
	// 当前页需要显示的数据
	private List rows = new ArrayList();

	// 开始的页码索引
	private Integer beginPageIndex;
	// 结束的页码索引
	private Integer endPageIndex;

	public PageList() {

	}

	public PageList(int currentPage, int pageSize, int totalCount) {
		// 1.判断是否传入负数
		this.currentPage = currentPage < 1 ? 1 : currentPage;
		this.pageSize = pageSize < 1 ? 10 : pageSize;
		this.totalCount = totalCount;
		// 2.计算总的页数
		// this.totalPage = (this.totalCount % this.pageSize) == 0 ?
		// this.totalCount / this.pageSize
		// : this.totalCount / this.pageSize + 1;
		// static double Math.ceil(double a) 返回最小的（最接近负无穷大）double
		// 值，该值大于等于参数，并等于某个整数。
		this.totalPage = (int) Math.ceil(this.totalCount * 1.0D / this.pageSize);
		// 3.判断当前页码是否大于总的页数
		this.currentPage = this.currentPage > this.totalPage ? this.totalPage : this.currentPage;

		// 计算开始与结束的页码索引
		// 第一个参数：每页显示多少个页索引
		// 第二个参数：当前页 第三个参数：总结多少页
		PageIndex pageIndex = PageIndex.getPageIndex(6, this.currentPage, this.totalPage);
		this.beginPageIndex = pageIndex.getBeginIndex();
		this.endPageIndex = pageIndex.getEndIndex();
	}

	// 额外添加的方法
	public int getBegin() {
		return (currentPage - 1) * pageSize + 1;
	}

	public int getEnd() {
		int end = currentPage * pageSize;
		return end > totalCount ? totalCount : end;
	}

	public String getPage() {
		StringBuilder builder = new StringBuilder();
		// 处理首页
		if (this.currentPage == 1) {
			builder.append("<a href='javascript:;' class='nopage'>首页</a>&nbsp;");
			builder.append("<a href='javascript:;' class='nopage'>上一页</a>&nbsp;");
		} else {
			builder.append("<a href='javascript:;' class='page' onclick='go(1);'>首页</a>&nbsp;");
			builder.append(
					"<a href='javascript:;' class='page' onclick='go(" + (currentPage - 1) + ");'>上一页</a>&nbsp;");
		}
		// 简单处理中间的分页条
		if (this.beginPageIndex == null || this.endPageIndex == null) {
			this.beginPageIndex = 1;
			this.endPageIndex = 1;
		}
		for (int i = this.beginPageIndex; i <= this.endPageIndex; i++) {
			// 当前页码是否等于循环里面的i
			if (i == this.currentPage) {
				builder.append("<a href='javascript:;' class='curpage'>" + i + "</a>&nbsp;");
			} else {
				builder.append("<a href='javascript:;' class='page' onclick='go(" + i + ");'>" + i + "</a>&nbsp;");
			}
		}
		// 处理末页
		if (this.currentPage == this.totalPage) {
			builder.append("<a href='javascript:;' class='nopage'>下一页</a>&nbsp;");
			builder.append("<a href='javascript:;' class='nopage'>末页</a>&nbsp;");
		} else {
			builder.append(
					"<a href='javascript:;' target='_self' class='page' onclick='go(" + (currentPage + 1) + ");'>下一页</a>&nbsp;");
			builder.append("<a href='javascript:;' target='_self' class='page' onclick='go(" + this.totalPage + ");'>末页</a>&nbsp;");
		}
		return builder.toString();
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
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

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public List getRows() {
		return rows;
	}

	public void setRows(List rows) {
		this.rows = rows;
	}

	public Integer getBeginPageIndex() {
		return beginPageIndex;
	}

	public void setBeginPageIndex(Integer beginPageIndex) {
		this.beginPageIndex = beginPageIndex;
	}

	public Integer getEndPageIndex() {
		return endPageIndex;
	}

	public void setEndPageIndex(Integer endPageIndex) {
		this.endPageIndex = endPageIndex;
	}

	@Override
	public String toString() {
		return "PageList [currentPage=" + currentPage + ", pageSize=" + pageSize + ", totalCount=" + totalCount
				+ ", totalPage=" + totalPage + ", rows=" + rows.size() + "]";
	}

}
