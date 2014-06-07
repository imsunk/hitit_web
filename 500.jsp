<%@ page isErrorPage="true"%><%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" import="java.util.Scanner, java.io.File"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title><%//=exception.getClass().getName()%></title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<%@include file="./in_navibar.jspf"%>
    </nav>

    <div class="container">

        <div class="row">

            <div class="col-lg-12">
                <h1 class="page-header">500
                    <small>Server Error</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.html">Home</a>
                    </li>
                    <li class="active">500</li>
                </ol>
            </div>

        </div>

        <div class="row">

            <div class="col-lg-12">
                <p class="error-404">500</p>
                <p class="lead"><%=exception.getClass().getName()%></p>
                <p><%//exception.printStackTrace(new java.io.PrintWriter(out));%></p>
				<p>
				<%
					StackTraceElement[] steArr =  exception.getStackTrace();
					String result = "";
					StackTraceElement ste =  steArr[0];

					result += ste.getClassName() + "<br />" +
					ste.getFileName() + "<br />" +
					ste.getLineNumber() + "<br />" +
					ste.getMethodName() + "<br />" +
					ste.isNativeMethod() + "<br />" +
					ste.toString() + "\n";
				%>
				<%=result	%>
				</p>
                <ul>
                    <li><a href="#"><%=exception.getMessage()%></a>
                    </li>
                    <li>
						<a href="#">
						<%
						String errorFilePath = getServletContext().getRealPath("/").replace("webapps","work/Catalina/localhost") + ste.getClassName().replaceAll("\\.","/") + ".java";
						out.println(errorFilePath);
						Scanner sc = new Scanner(new File(errorFilePath));
						int errorLineNum = ste.getLineNumber();
						int lineNum = 1;
						String tmpOutput = null;
						out.println("<br />");
						while(sc.hasNextLine()){
							tmpOutput = "line "+lineNum +" : "+ sc.nextLine() + "<br />";
							if( lineNum == errorLineNum ){
								out.println("<b style=color:red>"+tmpOutput+"</b>");
							} else if( (lineNum > (errorLineNum - 5)) && (lineNum < (ste.getLineNumber()+5))){
								out.println(tmpOutput);
							}
							lineNum++;
						}
						%>
						</a>
                    </li>
                </ul>
            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Company 2013</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/modern-business.js"></script>

</body>

</html>

