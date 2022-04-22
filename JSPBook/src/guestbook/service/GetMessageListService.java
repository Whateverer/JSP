package guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import dto.GuestbookMessage;
import guestbook.dao.MessageDao;
import jdbc.ConnectionProvider;
import jdbc.JdbcUtil;

public class GetMessageListService {
   //싱글톤
   private static GetMessageListService instance = 
         new GetMessageListService();
   public static GetMessageListService getInstance() {
      return instance;
   }
   private GetMessageListService() {}
   
   // list.jsp의 메시지 목록
   public List<GuestbookMessage> getMessageList(){
      Connection conn = null;
      try {
	      conn = ConnectionProvider.getConnection();
	      // Data Access Object(db작업하는 객체)
	      MessageDao messageDao = MessageDao.getInstance();
	      List<GuestbookMessage> messageList = messageDao.selectList(conn);
	      return messageList ;
      }catch(SQLException ex) {
         throw new ServiceException("목록 구하기 실패: " + ex.getMessage(),ex);
      }finally {
         JdbcUtil.close(conn);
         System.out.println("conn 종료");
      }
   }
}