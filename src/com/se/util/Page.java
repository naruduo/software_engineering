package com.se.util;

public class Page {
	private int start;
	private int count;
	private long total;
	private String param;

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Page(int start, int count) {
		super();
		this.start = start;
		this.count = count;
	}

	public boolean isHasPreviouse() {
		return start != 0;

	}

	public boolean isHasNext() {
		System.out.println(start + "," + getLast());
		return start != getLast();
	}

	public long getTotalPage() {
		long totalPage;
		// 假设总数是50，是能够被5整除的，那么就有10页
		if (0 == total % count)
			totalPage = total / count;
		// 假设总数是51，不能够被5整除的，那么就有11页
		else
			totalPage = total / count + 1;

		if (0 == totalPage)
			totalPage = 1;
		return totalPage;

	}

	public long getLast() {
		long last;
		// 假设总数是50，是能够被5整除的，那么最后一页的开始就是45
		if (0 == total % count)
			last = total - count;
		// 假设总数是51，不能够被5整除的，那么最后一页的开始就是50
		else
			last = total - total % count;

		last = last < 0 ? 0 : last;
		return last;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public String getParam() {
		return param;
	}

	public void setParam(String param) {
		this.param = param;
	}

}
