package net.member.action;

import java.io.PrintWriter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.member.action.ActionForward;
import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberLoginAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	ActionForward forward = new ActionForward();
		 	
		 	HttpSession session=request.getSession();
			MemberDAO memberdao=new MemberDAO();
	   		MemberBean member=new MemberBean();
	   		
	   		int result=-1;
	   		
	   		member.setM_ID(request.getParameter("id"));
	   		member.setM_PW(request.getParameter("pw"));
	   		result=memberdao.isMember(member);
	   		
	   		if(result==0){
	   			response.setContentType("text/html;charset=utf-8");
		   		PrintWriter out=response.getWriter();
		   		out.println("<script>");
		   		out.println("alert('비밀번호가 일치하지 않습니다.');");
		   		out.println("location.href='./index.jsp';");
		   		out.println("</script>");
		   		out.close();
		   		return null;
	   		}else if(result==-1){
	   			response.setContentType("text/html;charset=utf-8");
		   		PrintWriter out=response.getWriter();
		   		out.println("<script>");
		   		out.println("alert('아이디가 존재하지 않습니다.');");
		   		out.println("location.href='./index.jsp';");
		   		out.println("</script>");
		   		out.close();
		   		return null;
		   	}else if(result==1){
		   		//로그인 성공
		   		session.setAttribute("id", member.getM_ID());
//		   		System.out.println("login success");
//		   		System.out.println(member.getM_ID());
		   		forward.setRedirect(true);
		   		forward.setPath("./index.me");
	   		}
	   		return forward;
	 }
}
	
