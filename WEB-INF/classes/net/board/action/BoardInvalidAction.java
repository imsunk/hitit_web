package net.board.action;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.board.db.BoardDAO;

 public class BoardInvalidAction implements Action {
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) throws Exception{
		 String page;
		if(request.getParameter("page")!=null){
			page=request.getParameter("page");
			if(page.equals("boardadd")){
				if(request.getParameter("status").equals("SPAM01")){
					request.setAttribute("err_msg", "meaningless subject");
				}
			}
		}

		ActionForward forward= new ActionForward();
	 	forward.setRedirect(true);
 		forward.setPath("./board/board_invalid.jsp");
 		return forward;
	 }
 }