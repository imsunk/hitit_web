<%@ page language="java" contentType="text/html; charset=UTF-8"
	errorPage="error.jsp" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
	#table1 {
		margin: 50px;
		border: 1em;
	}
</style>
<script type="text/javascript">
	if(window.openDatabase) {
	    alert("현재 브라우저는 Web SQL Database를 지원합니다")
	}
	else{
	     alert("현재 브라우저는 Web SQL Database를 지원하지 않습니다")
	}
	
	var db;
	
	function createDB(db_name) {
		db = window.openDatabase("test1", "1.0", "테스트용DB", 1024 * 1024);
	}

	function createTable(table_name) {
		db.transaction(function(tx) {
			tx.executeSql("create table " + table_name + "(id, name)");
		});
	}

	function insertData(table_name) {
		db.transaction(function(tx) {
			tx.executeSql("insert into "+table_name+" values(?,?)", 
					[ txtID.value, txtName.value ]);
		});
	}

	function selectData(select_table) {
		db.transaction(function(tx) {
			tx.executeSql("select * from "+select_table, [],
			
				function(tx, result) {
					document.getElementById('table1').innerHTML = ""
				
					for ( var i = 0; i < result.rows.length; i++) {
						var row = result.rows.item(i);
						document.getElementById('table1').innerHTML += "<tr><td>"
								+ row['id'] + "</td><td>" + row['name']
								+ "</td></tr>";
					}
				});
			});
	}
</script>
</head>
<body>

	<input type="text" id="db_name">
	<button onclick="createDB(document.getElementById('db_name').value);">DB 생성</button>
	<br>
	<input type="text" id="table_name">
	<button onclick="createTable(document.getElementById('table_name').value);">테이블생성</button>
	<br> 
	ID: <input type="text" id="txtID">
	NAME: <input type="text" id="txtName">
	<button onclick="insertData()">데이터 입력</button>
	<br>
	데이터를 조회할 테이블: <input type="text" id="select_table">
	<button onclick="selectData(document.getElementById('select_table').value)">데이타 조회</button>
	<br>
	<table id="table1"></table>
</body>
</html>