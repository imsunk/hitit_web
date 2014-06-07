package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.member.action.ActionForward;
import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberJoinAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	request.setCharacterEncoding("utf-8");
		 	
		 	ActionForward forward = new ActionForward();
		 	
			MemberDAO memberdao=new MemberDAO();
	   		MemberBean member=new MemberBean();
	   		
	   		boolean result=false;
	   		
	   		member.setM_ID(request.getParameter("M_ID"));
	   		member.setM_PW(request.getParameter("M_PW"));
	   		member.setM_NAME(request.getParameter("M_NAME"));
	   		member.setM_AGE(Integer.parseInt(request.getParameter("M_AGE")));
	   		member.setM_GENDER(request.getParameter("M_GENDER"));
	   		member.setM_EMAIL(request.getParameter("M_EMAIL"));
	   		
	   		result=memberdao.joinMember(member);
	   		
	   		if(result==false){
	   			System.out.println("회원가입 실패");
		   		return null;
		   	} else {
				System.out.println("회원가입 성공");
			}
	   		
	   		//회원가입 성공.
	   		forward.setRedirect(true);
	   		forward.setPath("./MemberLogin.me");
	   		return forward;
	}
}