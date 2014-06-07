package net.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardDAO;
import net.board.db.BoardBean;

import net.board.filter.SpamFilter;

public class BoardReplyAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 throws Exception{
		 	request.setCharacterEncoding("utf-8");
		 	ActionForward forward = new ActionForward();
		 	
			BoardDAO boarddao=new BoardDAO();
	   		BoardBean boarddata=new BoardBean();
	   		int result=0;
	   		
	   		boarddata.setB_NUM(Integer.parseInt(request.getParameter("B_NUM")));
	   		boarddata.setB_NAME(request.getParameter("B_NAME"));
	   		boarddata.setB_PASS(request.getParameter("B_PASS"));
	   		boarddata.setB_SUBJECT(request.getParameter("B_SUBJECT"));
	   		boarddata.setB_CONTENT(request.getParameter("B_CONTENT"));
	   		boarddata.setB_RE_REF(Integer.parseInt(request.getParameter("B_RE_REF")));
	   		boarddata.setB_RE_LEV(Integer.parseInt(request.getParameter("B_RE_LEV")));
	   		boarddata.setB_RE_SEQ(Integer.parseInt(request.getParameter("B_RE_SEQ")));
			boarddata.setCATEGORY(request.getParameter("CATEGORY"));
	   		
	   		

			// 스팸 필터 시작
			
			if(SpamFilter.getChangeCaseRate(request.getParameter("B_SUBJECT"))>0.15){ // 스팸 등 필더로 거르기
				forward.setRedirect(true);
				forward.setPath("./BoardInvalid.bo?page=boardadd&status=SPAM01"); // 의미 없는 문자열
				//게시판 등록 실패: SPAM01
				return null;
			} else {
				result=boarddao.boardReply(boarddata);
			}
			// 스팸 필터 끝

	   		if(result==0){
	   			//답장 실패
	   			return null;
	   		}
	   		//답장 완료
	   		
	   		forward.setRedirect(true);
	   		forward.setPath("./BoardDetailAction.bo?num="+result+"&category="+request.getParameter("CATEGORY"));
	   		return forward;
	}  	
}