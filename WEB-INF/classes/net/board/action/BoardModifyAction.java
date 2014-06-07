package net.board.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.*;

import net.board.filter.SpamFilter;

 public class BoardModifyAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 request.setCharacterEncoding("utf-8");
		 ActionForward forward = new ActionForward();
		 boolean result = false;
		 
		 int num=Integer.parseInt(request.getParameter("B_NUM"));
		 
		 BoardDAO boarddao=new BoardDAO();
		 BoardBean boarddata=new BoardBean();
		 
		 boolean usercheck=boarddao.isBoardWriter(num, request.getParameter("B_PASS"));
		 if(usercheck==false){
		   		response.setContentType("text/html;charset=utf-8");
		   		PrintWriter out=response.getWriter();
		   		out.println("<script>");
		   		out.println("alert('수정할 권한이 없습니다.');");
	   			out.println("location.href='./BoardList.bo?category="+request.getParameter("category")+"';");
		   		out.println("</script>");
		   		out.close();
		   		return null;
		 }
		 
		 try{
			 boarddata.setB_NUM(num);
			 boarddata.setB_SUBJECT(request.getParameter("B_SUBJECT"));
			 boarddata.setB_CONTENT(request.getParameter("B_CONTENT"));
			 
			 result = boarddao.boardModify(boarddata);

			// 스팸 필터 시작
			
			if(SpamFilter.getChangeCaseRate(request.getParameter("B_SUBJECT"))>0.15){ // 스팸 등 필더로 거르기
				forward.setRedirect(true);
				forward.setPath("./BoardInvalid.bo?page=boardadd&status=SPAM01"); // 의미 없는 문자열
				//게시판 등록 실패: SPAM01
				return null;
			}
			// 스팸 필터 끝

			 if(result==false){
		   		//게시판 수정 실패
		   		return null;
		   	 }
		   	 //게시판 수정 완료
		   	 
		   	 forward.setRedirect(true);
		   	 forward.setPath("./BoardDetailAction.bo?num="+boarddata.getB_NUM()+"&category="+request.getParameter("category"));
		   	 return forward;
	   	 }catch(Exception ex){
	   			ex.printStackTrace();	 
		 }
		 
		 return null;
	 }
}