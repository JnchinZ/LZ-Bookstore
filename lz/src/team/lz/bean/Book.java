package team.lz.bean;

public class Book {
	private int id;//ͼ��id
	private String bookName;//ͼ����
	private String bookSummary;//ͼ����	
	private double fixPrice;//ͼ��ԭ��(�̶��۸�)
	private double currentPrice;//ͼ���ּ�
	private String bookPic;//ͼ�����ͼƬ��ַ
	private String authorName;//������
	private String authorSummary;//���߼��
	private long publishDate;//��������
	private String publishing;//������
	private String catalogue;//ͼ��Ŀ¼
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
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
	public long getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(long publishDate) {
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
