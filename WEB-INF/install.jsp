<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%><%@ page import="java.io.*"%>
<%@ page import="java.lang.Process"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Process process = Runtime.getRuntime().exec("sh version.sh");
		BufferedReader br = new BufferedReader(new InputStreamReader(
				process.getInputStream()));

		String lineStr = null;
		StringBuffer sb = null;

		sb = new StringBuffer();

		while ((lineStr = br.readLine()) != null) {
			sb.append(lineStr);
			sb.append("\n");
		}
		br.close();
		
		out.println(sb.toString());
	%>
</body>
</html>