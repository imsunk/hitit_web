<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.util.*, java.text.SimpleDateFormat, net.board.db.*" %><%
BoardDAO boarddao=new BoardDAO();

String category;
if(request.getParameter("category")!=null){
	category=request.getParameter("category");
} else {
	category="default";
}
List boardList= boarddao.getBoardList(1,10,category);

int listcount=boarddao.getListCount(category);

%>
<style>@import "<%=request.getContextPath()%>/board/css/recent.css";</style>
<!-- 게시판 리스트 -->
<table>
	<%
	if(listcount > 0){ %>
	<tr class="center" valign="middle">
		<th colspan="4">
			<!-- <%=boarddao.getCategoryName(category)%> 게시판 -->
			<a href="<%=request.getContextPath()%>/BoardList.bo?category=<%=category %>">
				<%=boarddao.getCategoryName(category)%> 게시판
			</a>
		</th>
	</tr>
	<%
	int recentBoardLength = 0;
	if (boardList.size() > 7) {
		recentBoardLength = 7;
	} else {
		recentBoardLength = boardList.size();
	}
	for(int i=0;i<recentBoardLength;i++){
	BoardBean bl=(BoardBean)boardList.get(i); %>
	<tr class="center">
		<td>
			<div align="left">
				<%if(bl.getB_RE_LEV()!=0){ %>
				<%for(int a=0;a<=bl.getB_RE_LEV()*2;a++){ %>
				&nbsp;<%} %>
				<%}else{ %>
				<%} %>
				<a href="<%=request.getContextPath()%>/BoardDetailAction.bo?num=<%=bl.getB_NUM()%>&category=<%=bl.getCATEGORY() %>"><%=bl.getB_SUBJECT() %>
				</a>
			</div>
		</td>
	</tr>
	<%}}%>
</table>
