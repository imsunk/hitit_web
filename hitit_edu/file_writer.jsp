<%@page contentType="text/html;charset=euc-kr" %>
<%@page import="java.io.*"%>
<%
    String strText = request.getParameter("DATA");

    try{
        FileWriter fw = new FileWriter("/tmp/jsp_file.log", true);
        fw.write("\n" + strText);
        fw.close();
    } catch (IOException e) {
        System.out.println(e.toString());
    }
%>
