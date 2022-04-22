package ch04.com.dao;

import java.io.Serializable;
//자바빈 클래스
public class Person implements Serializable {
	//필드(멤버변수)
	private int id = 20181004;
	private String name = "개똥이";
	
	//기본생성자(생략가능)
	public Person() {
	}

	//getter/setter메소드
	public int getId() {
		return this.id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
}