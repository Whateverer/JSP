package ch04.com.dao;

import java.util.ArrayList;
import java.util.List;

import dto.Book;

//자바빈즈로 사용할 상품 데이터 접근 클래스
public class BookRepository {
	private List<Book> listOfBooks = new ArrayList<Book>();
	
	private static BookRepository instance = new BookRepository();
	public static BookRepository getInstance() {
		return instance;
	}
	
	//생성자 - 도서 이미지를 설정하도록 추가 작성???
	public BookRepository() {
		Book book1 = new Book("ISBN1", "쉽게 배우는 자바 프로그래밍", 27000);
		book1.setWriter("우종정");
		book1.setPublisher("한빛아카데미");
		book1.setPdate("2020-11-22");
		book1.setPages(780);
		book1.setDetail("새로운 기능도 함께 익히는 자바 객체 지향 프로그래밍\r\n" + 
				"\r\n" + 
				"이 책은 객체 지향의 핵심을 다루면서도 자바 8 이후 도입된 새로운 기능을 상세히 설명한다. 군더더기 없는 핵심 코드를 읽고 따라 하면서 ‘개념 이해와 실제 구현’을 할 수 있고, 실생활에 적용할 수 있는 프로젝트 문제를 풀면서 프로그래밍 실력도 끌어올릴 수 있다.");
		book1.setCategory("자바");
		book1.setUniStock(100);
		book1.setCondition("새상품");
		book1.setBookImg("ISBN1.jfif");
		
		Book book2 = new Book("ISBN2", "용의자X의 헌신", 13000);
		book2.setWriter("히가시노 게이고");
		book2.setPublisher("현대문학");
		book2.setPdate("2006-08-10");
		book2.setPages(404);
		book2.setDetail("일본 미스터리 소설사 이래 최초로 3개 부문 베스트 1위를 기록한 초유의 화제작.\r\n"
				+ "<이 미스터리가 최고>, <본격 미스터리 베스트 10>, <주간문춘 미스터리 베스트 10> 부문에 각각 1위를 기록한 작품이며, 2006년 나오키상 수상작이다. 『백야행』, 『레몬』의 작가 히가시노 게이고의 2006년 최고 화제작.");
		book2.setCategory("소설");
		book2.setUniStock(100);
		book2.setCondition("새상품");
		book2.setBookImg("ISBN2.jfif");
		
		listOfBooks.add(book1);
		listOfBooks.add(book2);
		
		/*private String writer; // 저자
		private String publisher; // 출판사
		private String pdate; // 출판일
		private Integer pages; // 총 페이지 수
		private String detail; // 상세정보
		private String bookclass;//분류
		private long uniStock; // 재고
		private String condition; // 상태
		private String bookImg;*/
	}//end constructor
	
	public List<Book> getAllBooks(){
		return listOfBooks;
	}
	
	//상품 상세정보를 가져오는 메소드
	public Book getBookByCode(String bookCode) {
		//선언만,,
		Book bookByCode = null;
		
		for(int i=0; i<listOfBooks.size();i++) {
			Book book = listOfBooks.get(i);
			//등록된 상품이 있어야 하고, 상품코드가 있어야하며, 
			//그 때의 그 상품코드와 매개변수에 담긴 파라미터 상품코드가 같을 때에만 실행
			if(book!=null && book.getBookCode()!=null&&
					book.getBookCode().equals(bookCode)) {
				bookByCode = book;
				break;
			}
		}
		return bookByCode;
	}
	
	public void addBook(Book book) {
		listOfBooks.add(book);
	}
}
