<%@ page errorPage="error.jsp" contentType="text/html; charset=utf-8" import="java.util.*" %><% response.setHeader("Cache-Control","max-age=0"); %>
<%
	request.setCharacterEncoding("utf-8");
	if(!request.getRemoteHost().equals("114.70.194.77")){ // 추가하려면 &&
%>
<pre>
<%
	if(request.getParameterValues("group1") != null){
		Iterator<String> iter = Arrays.asList(request.getParameterValues("group1")).iterator();
		out.println("1조 출석자");
		while(iter.hasNext()){
			System.out.println(iter.next());
			//out.println(iter.next());
		}
	}
%>
<%
	if(request.getParameterValues("group2") != null){
		Iterator<String> iter = Arrays.asList(request.getParameterValues("group2")).iterator();
		out.println("2조 출석자");
		while(iter.hasNext()){
			//System.out.println(iter.next());
			out.println(iter.next());
		}
	}
%>
<%
	if(request.getParameterValues("group3") != null){
		Iterator<String> iter = Arrays.asList(request.getParameterValues("group3")).iterator();
		out.println("3조 출석자");
		while(iter.hasNext()){
			//System.out.println(iter.next());
			out.println(iter.next());
		}
	}
%>
</pre>
<%}else{ %>
해당 아이피는 차단 되었습니다. <br />
<%}%>