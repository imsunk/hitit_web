<%@ page language="java" contentType="text/html; charset=UTF-8"
    errorPage="error.jsp" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>01.02 table Tag</title>
</head>
<body>
<div>
	<table width="800" cellpadding="3px" cellspacing="3px" border="3" align="center" cellpadding= >
		<tr bgcolor="#8080FF" align="center">
			<th width="100">홈페이지 로고</td>
			<th width="100">메뉴1</th>
			<th width="100">메뉴2</th>
			<th width="100">메뉴3</th>
			<th width="100">메뉴4</th>
			<th width="100">메뉴5</th>
			<th width="200"><!-- space --></th>
		</tr>
	</table>

	<table width="800" cellpadding="0" cellspacing="0" border="0" align="center">
		<tr>
			<td width="150" valign="top" bgcolor="#8080FF">
				<table width="130" cellpadding="5" cellspacing="3px" border="2" align="center">
					<tr>
						<th>하위메뉴1</td>
					</tr>
					<tr>
						<td>하위메뉴2</td>
					</tr>
					<tr>
						<td>하위메뉴3</td>
					</tr>
					<tr>
					   <td>하위메뉴4</td>
					</tr>
					<tr>
						<td>하위메뉴5</td>
					</tr>
				</table>
			</td>
			<td width="650" valign="top">
				<table width="600" cellpadding="3px" cellspacing="0" border="0" align="center">
					<tr>
						<td>
							<div>						
							<style>
								td, th { width : 70px; padding:2px; border: #626262 solid 1px;}
							</style>
							<h1>스터디 그룹</h1>
							<hr>
							<form action="study_group_check.jsp" method="post">
								<table>
									<tr>
										<th>조</th><th>이름</th><th>date</th><th>present</th>
										<th>oneline opnnion</th><th>passwd</th>
									</tr>
									<tr>
										<td>
											<select name="group">
												<option value="group_1">group_1</option>
												<option value="group_2">group_2</option>
												<option value="group_3">group_3</option>
											</select>
										</td>
										<td>
											<select name="name">
												<option value="name_1">name_1</option>
												<option value="name_2">name_2</option>
												<option value="name_3">name_3</option>
												<option value="name_4">name_4</option>
											</select>
										</td>
										<td>
											<form>
												<input type="date" />
											</form>
										</td>
										<td>
											<menu type="toolbar">
													<menu label="present" >
													<button type="button" onclick="#">good</button>
													<button type="button" onclick="#">late</button>
													<button type="button" onclick="#">absent</button>
													</menu>
											</menu>
										</td>
										<td>
											<textarea rows="5" cols="30" name="contents" maxlength="100" />기본값은 여기에 적어줍니다.</textarea>
										</td>
										<td>
											<input type="password" name="pass" /> 
										</td>
									</tr>
									<tr>
										<td colspan="3" border="0"></td><td><input value="출석완료" type="submit" /></td><td colspan="2"></td>
									</tr>
								</table>
							</form>
						</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>
</body>
</html>
