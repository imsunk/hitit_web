package net.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletResponse;

import net.member.action.ActionForward;
import net.member.db.MemberBean;
import net.member.db.MemberDAO;

public class MemberJoinAction implements Action{
	 public ActionForward execute(HttpServletRequest request,HttpServletResponse response) 
	 	throws Exception{
		 	request.setCharacterEncoding("utf-8");
		 	HttpSession session=request.getSession();
		 	ActionForward forward = new ActionForward();
		 	
			MemberDAO memberdao=new MemberDAO();
	   		MemberBean member=new MemberBean();
	   		
	   		boolean result=false;
	   		
	   		member.setM_ID(request.getParameter("id"));
	   		member.setM_PW(request.getParameter("pw"));
	   		member.setMajor(request.getParameter("major"));
	   		
	   		member.setM_NAME(request.getParameter("name"));
	   		member.setNickName(request.getParameter("nickName"));
	   		member.setM_EMAIL(request.getParameter("email"));
	   		member.setAddress(request.getParameter("address"));
	   		System.out.println(member.getAddress());
	   		System.out.println(member.getMajor());
	   		System.out.println(member.getNickName());
	   		
	   		result=memberdao.joinMember(member);
	   		
	   		if(result==false){
	   			System.out.println("회원가입 실패");
		   		return null;
		   	} else {
				System.out.println("회원가입 성공");
			}
	   		session.setAttribute("id",request.getParameter("id"));
	   		//회원가입 성공.
	   		forward.setRedirect(true);
	   		forward.setPath("./index.me");
	   		return forward;
	}
}