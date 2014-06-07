<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
	String errMsg = (String)request.getAttribute("err_msg");
%>
<html>
	<head>
		<title></title>
		<style>@import "<%=request.getContextPath()%>/board/css/default.css";</style>
	</head>
	<body>
		<table>
			<tr class="center" valign="middle">
				<td colspan="4">
					errMsg : ${ errMsg }
				</td>
			</tr>
		</table>
	</body>
</html>