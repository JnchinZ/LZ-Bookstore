package team.lz.bean;

import com.mysql.fabric.xmlrpc.base.Data;

public class Cart {
	private int id;
	private int userId;//�û�id
	private int bookId;//ͼ��id
	private int bookNum;//���ﳵ�ڵ�ͼ������

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
	
	
	private String bookName;//ͼ����
	private String bookSummary;//ͼ����	
	private double fixPrice;//ͼ��ԭ��(�̶��۸�)
	private double currentPrice;//ͼ���ּ�
	private String bookPic;//ͼ�����ͼƬ��ַ
	private String authorName;//������
	private String authorSummary;//���߼��
	private Data publishDate;//��������
	private String publishing;//������
	private String catalogue;//ͼ��Ŀ¼

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
