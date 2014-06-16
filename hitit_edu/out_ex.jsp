<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" autoFlush="false" %>
 
<%
        //out 객체 [flush, clearBuffer, close]
       	out.println("<script></script>");
        out.println("1<br/>");
        out.println("2<br/>");
        out.println("3<br/>");
        out.flush();
        out.println("4<br/>");
        out.println("5<br/>");
        out.println("6<br/>");
        //버퍼에서 제거
        out.clearBuffer();
        out.println("7<br/>");
        out.println("8<br/>");
        out.println("9<br/>");
        out.flush();
        out.println("10<br/>");
        out.println("11<br/>");
        out.println("12<br/>");
        //출력버퍼를 close
        out.close();
        out.println("13<br/>");
       
        /*
         */
%>