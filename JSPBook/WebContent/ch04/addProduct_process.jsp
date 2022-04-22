<%@page import="ch04.com.dao.ProductRepository"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="dto.Product"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
//1. request 객체의 인코딩을 UTF-8로 설정
	request.setCharacterEncoding("UTF-8");
//0 파일 업로드 처리(productImage)
	//파일 저장 임시 경로 & 실제로 저장될 위치 => /upload/...jpg
	String path = "D:\\A_TeachingMaterial\\6.JspSpring\\workspace\\JSPBook\\WebContent\\upload";
	//DiskFileUpload 클래스 (common-fileupload 라이브러리에서 제공해줌)
	DiskFileUpload upload = new DiskFileUpload();
	//5M까지 업로드 가능
	upload.setSizeMax(5000000);
	//버퍼 메모리 4Kbytes
	upload.setSizeThreshold(4096);
	//임시 저장 경로
	upload.setRepositoryPath(path);
	//upload객체가 jsp 기본 객체인 request 객체에 담긴 파라미터 데이터들을 파싱(구문 + 의미 분석)
	//목록화
	List items = upload.parseRequest(request);
	//List를 Iterator로 바꿔줌(왜? 약속)
	Iterator params = items.iterator();
	//상품객체 (신규 상품을 등로가기 위해 빈그릇을 준비. 자바빈 클래스)
	Product newProduct = new Product();
	//enctype="multipart/form-data"를 쓰는 순간 request.getParameter는 사용 불가
	//그래서 변수 선언만 해놓음
	
	String productId = "";
	String pname = "";
	String uniPrice = "";
	String description = "";
	String manufacturer = "";
	String category = "";
	String unitsInStock = "";
	String condition = "";
	//전송된 요청 파라미터가 없을 때까지 반복, Iterator 객체 타입의 hasNext() 메소드 사용
	while(params.hasNext()){
		//전송된 요청 파라미터의 이름을 가져옴
		FileItem item = (FileItem)params.next();
		
		if(item.isFormField()){//파라미터가 파일이 아니라면..
			//input type='text' name='productId' => productId
			//input type='text' name='uniPrice' => uniPrice
			String name = item.getFieldName();
			
			if(name.equals("productId")){
				productId = item.getString("UTF-8");
			}else if(name.equals("pname")){
				pname = item.getString("UTF-8");
			}else if(name.equals("uniPrice")){
				//input type='text' name='uniPrice'에 입력된 value값 ex) 1000000
				//"1000000"
				uniPrice = item.getString("UTF-8");
			}else if(name.equals("description")){
				description = item.getString("UTF-8");
			}else if(name.equals("manufacturer")){
				manufacturer = item.getString("UTF-8");
			}else if(name.equals("category")){
				category = item.getString("UTF-8");
			}else if(name.equals("unitsInStock")){
				unitsInStock = item.getString("UTF-8");
			}else if(name.equals("condition")){
				condition = item.getString("UTF-8");
			}
		}else{//파라미터가 파일이라면
			//<input type='file' name='productImage' => productImage
			String fileFieldName = item.getFieldName();
			//실제 파일명 ex) P1237.jpg
			String fileName = item.getName();
			//파일의 MIME 타입 ex) ../jpeg
			String contentType = item.getContentType();
			//물리경로(P1237.jpg) -> 파일명(P1237.jpg)만 남김
			//IE(C:\Users\SEM-PC\Downloads\P1237.jpg) -> P1237.jpg
			fileName.substring(fileName.lastIndexOf("\\")+1);
			//파일 저장을 위한 설계(파일객체)
			//D:\\A_TeachingMaterial\\6.JspSpring\\workspace\\JSPBook\\WebContent\\upload"
			// /P1237.jpg
			File file = new File(path + "/" + fileName);
			//파일 저장
			item.write(file);
			//결과 출력
			out.print("저장 파일 이름 : " + fileName + "<br />");
			//상품 객체의 filename 멤버 변수에 파일명을 세팅
			newProduct.setFilename(fileName);
		}
	}

//2. 파라미터 목록을 받자
	//uniPrice : "1000000"
	Integer price;
	if(uniPrice.isEmpty()){
		price = 0;
	}else{
		//"1000000" -> 1000000
		price = Integer.valueOf(uniPrice);
	}
	
	long stock;
	if(unitsInStock.isEmpty()){
		stock = 0;
	}else{
		stock = Long.valueOf(unitsInStock);
	}
	
//3. ProductRepository 클래스의 인스턴스 생성(싱글톤패턴 -> 단 한번 생성 -> 하나의 객체를 서로 공유)
	ProductRepository dao = ProductRepository.getInstance();
	//상품 객체의 모든 멤버 변수에 세팅
	newProduct.setProductId(productId);
	newProduct.setPname(pname);
	newProduct.setUniPrice(price);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitsInStock(stock);
	newProduct.setCondition(condition);
	
	out.print("newProduct : " + newProduct.toString());
	
//4. 상품을 추가하자
	//public void addProduct(Product product){
	dao.addProduct(newProduct);
	
//5. 상품 목록(products.jsp)으로 돌아가자.
	response.sendRedirect("products.jsp");
%>












