package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;
import net.member.action.ActionForward;
import java.io.PrintWriter;
import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberIdCheckAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	request.setCharacterEncoding("utf-8");
		 	ActionForward forward = new ActionForward();
		 	
			MemberDAO memberdao=new MemberDAO();
	   		if((memberdao.idCheck(request.getParameter("id")))==-1){
	   			response.setContentType("text/html;charset=utf-8");
		   		PrintWriter out=response.getWriter();
		   		out.println("-1");
		   		out.close();
	   		}else{
	   			response.setContentType("text/html;charset=utf-8");
		   		PrintWriter out=response.getWriter();
		   		out.println("1");
		   		out.close();
	   		}
	   		return forward;
	}
}