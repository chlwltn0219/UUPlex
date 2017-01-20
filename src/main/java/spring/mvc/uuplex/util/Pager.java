package spring.mvc.uuplex.util;

public class Pager{

	private static Pager instance = new Pager();
	public static Pager getInstance() {
		if(instance == null)
			instance = new Pager();
		
		return instance;
	}
	
	private Pager() {
		displayContentCnt = 20;
		displayPageCnt = 10;
	}
	
	private int displayContentCnt;
	private int displayPageCnt;
	
	private int startContent;
	private int endContent;
	
	private int nowPage;
	private int startPage;
	private int endPage;
	
	private boolean prev;
	private boolean next;
	
	public void calcPage(int totalCount, int nowPage) {
		
		int pageGroup = (nowPage - 1) / displayPageCnt;
		int maxPage = (int) Math.ceil(totalCount*1.0 / displayContentCnt);

		prev = (pageGroup != 0);
		next = (pageGroup != (maxPage - 1) / displayPageCnt);
		
		startContent = (nowPage - 1) * displayContentCnt + 1;
		endContent = nowPage * displayContentCnt;
		
		this.nowPage = nowPage;
		startPage = pageGroup * displayPageCnt + 1;
		endPage = next ? (pageGroup + 1) * displayPageCnt : maxPage;
		
	}

	public int getDisplayContentCnt() {
		return displayContentCnt;
	}
	public void setDisplayContentCnt(int displayContentCnt) {
		this.displayContentCnt = displayContentCnt;
	}

	public int getDisplayPageCnt() {
		return displayPageCnt;
	}
	public void setDisplayPageCnt(int displayPageCnt) {
		this.displayPageCnt = displayPageCnt;
	}

	public int getStartContent() {
		return startContent;
	}
	public void setStartContent(int startContent) {
		this.startContent = startContent;
	}

	public int getEndContent() {
		return endContent;
	}
	public void setEndContent(int endContent) {
		this.endContent = endContent;
	}

	public int getNowPage() {
		return nowPage;
	}
	public void setNowPage(int nowPage) {
		this.nowPage = nowPage;
	}
	
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	
}
