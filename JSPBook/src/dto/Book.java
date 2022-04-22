package dto;

public class Book {
	private String bookCode; // 도서코드
	private String bookName; // 도서명
	private Integer price; // 가격
	private String writer; // 저자
	private String publisher; // 출판사
	private String pdate; // 출판일
	private Integer pages; // 총 페이지 수
	private String detail; // 상세정보
	private String category;//분류
	private long uniStock; // 재고
	private String condition; // 상태
	private String bookImg; // 이미지
	private int quantity; // 장바구니 개수
	
	//기본 생성자
	public Book() {
		super();
	}
	
	//생성자(필수 입력처리)
	public Book(String bookCode, String bookName, Integer price) {
		super();
		this.bookCode = bookCode;
		this.bookName = bookName;
		this.price = price;
	}

	public String getBookCode() {
		return bookCode;
	}

	public void setBookCode(String bookCode) {
		this.bookCode = bookCode;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getPdate() {
		return pdate;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

	public Integer getPages() {
		return pages;
	}

	public void setPages(Integer pages) {
		this.pages = pages;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public long getUniStock() {
		return uniStock;
	}

	public void setUniStock(long uniStock) {
		this.uniStock = uniStock;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getBookImg() {
		return bookImg;
	}

	public void setBookImg(String bookImg) {
		this.bookImg = bookImg;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	
	
}
