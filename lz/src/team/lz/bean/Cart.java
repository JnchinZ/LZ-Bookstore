package team.lz.bean;

import com.mysql.fabric.xmlrpc.base.Data;

public class Cart {
	private int id;
	private int userId;//用户id
	private int bookId;//图书id
	private int bookNum;//购物车内的图书数量

	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public int getBookNum() {
		return bookNum;
	}
	public void setBookNum(int bookNum) {
		this.bookNum = bookNum;
	}
	
	
	private String bookName;//图书名
	private String bookSummary;//图书简介	
	private double fixPrice;//图书原价(固定价格)
	private double currentPrice;//图书现价
	private String bookPic;//图书封面图片地址
	private String authorName;//作者名
	private String authorSummary;//作者简介
	private Data publishDate;//出版日期
	private String publishing;//出版社
	private String catalogue;//图书目录

	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getBookSummary() {
		return bookSummary;
	}
	public void setBookSummary(String bookSummary) {
		this.bookSummary = bookSummary;
	}
	public double getFixPrice() {
		return fixPrice;
	}
	public void setFixPrice(double fixPrice) {
		this.fixPrice = fixPrice;
	}
	public double getCurrentPrice() {
		return currentPrice;
	}
	public void setCurrentPrice(double currentPrice) {
		this.currentPrice = currentPrice;
	}
	public String getBookPic() {
		return bookPic;
	}
	public void setBookPic(String bookPic) {
		this.bookPic = bookPic;
	}
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public String getAuthorSummary() {
		return authorSummary;
	}
	public void setAuthorSummary(String authorSummary) {
		this.authorSummary = authorSummary;
	}
	public Data getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(Data publishDate) {
		this.publishDate = publishDate;
	}
	public String getPublishing() {
		return publishing;
	}
	public void setPublishing(String publishing) {
		this.publishing = publishing;
	}
	public String getCatalogue() {
		return catalogue;
	}
	public void setCatalogue(String catalogue) {
		this.catalogue = catalogue;
	}
	
	
}
