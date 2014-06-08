package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.action.ActionForward;
import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberLogoutAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	ActionForward forward = new ActionForward();
//		 	System.out.println("logout");
		 	HttpSession session=request.getSession();
		 	session.invalidate();
		 	response.setContentType("text/html;charset=utf-8");
	   		PrintWriter out=response.getWriter();
	   		out.println("<script>");
	   		out.println("alert('로그아웃되었습니다');");
	   		out.println("</script>");
		 	forward.setRedirect(true);
	   		forward.setPath("./index.jsp");
	   		return forward;
		}
}