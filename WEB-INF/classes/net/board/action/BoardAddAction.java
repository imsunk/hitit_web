package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import net.board.db.BoardDAO;
import net.board.db.BoardBean;

import net.board.filter.SpamFilter;

public class BoardAddAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		BoardDAO boarddao=new BoardDAO();
	   	BoardBean boarddata=new BoardBean();
	   	ActionForward forward=new ActionForward();
	   	
		String realFolder="";
   		String saveFolder=request.getContextPath()+"/board/boardupload";
   		
   		int fileSize=5*1024*1024;
   		
   		realFolder=request.getRealPath(saveFolder);
   		
   		boolean result=false;
   		

   		try{
   			
   			MultipartRequest multi=null;
   			
   			multi=new MultipartRequest(request,
   					realFolder,
   					fileSize,
   					"utf-8",
   					new DefaultFileRenamePolicy());
   			
   			boarddata.setB_NAME(multi.getParameter("B_NAME"));
   			boarddata.setB_PASS(multi.getParameter("B_PASS"));
	   		boarddata.setB_SUBJECT(multi.getParameter("B_SUBJECT"));
	   		boarddata.setB_CONTENT(multi.getParameter("B_CONTENT"));
			boarddata.setCATEGORY(multi.getParameter("CATEGORY"));
	   		boarddata.setB_FILE(
	   				multi.getFilesystemName((String)multi.getFileNames().nextElement()));
	   		
	   		
			
			// 스팸 필터 시작
			
			if(SpamFilter.getChangeCaseRate(multi.getParameter("B_SUBJECT"))>0.15){ // 스팸 등 필더로 거르기
				forward.setRedirect(true);
				forward.setPath("./BoardInvalid.bo?page=boardadd&status=SPAM01"); // 의미 없는 문자열
				//게시판 등록 실패: SPAM01
				return null;
			} else {
				result=boarddao.boardInsert(boarddata);
			}
			// 스팸 필터 끝

	   		if(result==false){
	   			//게시판 등록 실패
	   			return null;
	   		}
	   		//게시판 등록 완료
	   		
	   		forward.setRedirect(true);
	   		forward.setPath("./BoardList.bo?category="+multi.getParameter("CATEGORY"));
	   		return forward;
	   		
  		}catch(Exception ex){
   			ex.printStackTrace();
   		}
  		return null;
	}  	
}