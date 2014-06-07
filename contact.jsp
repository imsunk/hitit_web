<%@ page contentType="text/html; charset=utf-8"%><% response.setHeader("Cache-Control","max-age=0"); %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>위치</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.css" rel="stylesheet">

    <!-- Add custom CSS here -->
    <link href="css/modern-business.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <%@include file="./in_meta.jspf"%>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<%@include file="./in_navibar.jspf"%>
    </nav>

    <!-- Page Content -->

    <div class="container">
      
      <div class="row">
      
        <div class="col-lg-12">
          <h1 class="page-header">
          	<small>방문을 환영합니다!</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="index.jsp">Home</a></li>
            <li class="active">Contact</li>
          </ol>
        </div>
        
        <div class="col-lg-12">
          <!-- Embedded Google Map using an iframe - to select your location find it on Google maps and paste the link as the iframe src. If you want to use the Google Maps API instead then have at it! -->
          <!--<iframe width="100%" height="400px" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?hl=en&amp;ie=UTF8&amp;ll=37.0625,-95.677068&amp;spn=56.506174,79.013672&amp;t=m&amp;z=4&amp;output=embed"></iframe>-->
		  <img src="./img/contact.png" width="100%" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" />
        </div>

      </div><!-- /.row -->
      
<!--       <div class="row"> -->

<!--         <div class="col-sm-8"> -->
<!--           <h3>가입하세요 제발~</h3> -->
<!--           <p>한글 폰트가 엉망이네요. 이것을 수정하는 사람한테 회장자리를 주겠소! 가입문의나 문의사항은 아래에 적어 보내도록 합시다. 젠장 알림 서비스까지 만들어야되다니 이것은 너무 피곤한거 아냐? 졸업하고 나서 만지는 일은 없을 것이라고 믿습니다. 으아아아아아아아아아아아아아아아아아아아아</p> -->
<!-- 			<!-- php   -->

<!--                 // check for a successful form post   -->
<!--                 if (isset($_GET['s'])) echo "<div class=\"alert alert-success\">".$_GET['s']."</div>";   -->
          
<!--                 // check for a form error   -->
<!--                 elseif (isset($_GET['e'])) echo "<div class=\"alert alert-danger\">".$_GET['e']."</div>";   -->

<!-- 			--> 
<!--             <form role="form" method="POST" action="contact-form-submission.jsp"> -->
<!-- 	            <div class="row"> -->
<!-- 	              <div class="form-group col-lg-4"> -->
<!-- 	                <label for="input1">내가 그의 <small>이름</small>을 불러 주었을 때</label> -->
<!-- 	                <input type="text" name="contact_name" class="form-control" id="input1"> -->
<!-- 	              </div> -->
<!-- 	              <div class="form-group col-lg-4"> -->
<!-- 	                <label for="input2">그는 나에게로 와서 <small>이메일</small>을 상납하였다.</label> -->
<!-- 	                <input type="email" name="contact_email" class="form-control" id="input2"> -->
<!-- 	              </div> -->
<!-- 	              <div class="form-group col-lg-4"> -->
<!-- 	                <label for="input3">너의 이 빛깔과 향기에 알맞는 <small>폰 번호</small>를 불러다오</label> -->
<!-- 	                <input type="phone" name="contact_phone" class="form-control" id="input3"> -->
<!-- 	              </div> -->
<!-- 	              <div class="clearfix"></div> -->
<!-- 	              <div class="form-group col-lg-12"> -->
<!-- 	                <label for="input4">우리들은 모두 <small>문제</small>를 물어보고 싶다.</label> -->
<!-- 	                <textarea name="contact_message" class="form-control" rows="6" id="input4"></textarea> -->
<!-- 	              </div> -->
<!-- 	              <div class="form-group col-lg-12"> -->
<!-- 	                <input type="hidden" name="save" value="contact"> -->
<!-- 	                <button type="submit" class="btn btn-primary">보냄</button> -->
<!-- 	              </div> -->
<!--               </div> -->
<!--             </form> -->
<!--         </div> -->

<!--         <div class="col-sm-4"> -->
<!--           <h3>웹동아리 Hit IT</h3> -->
<!--           <h4>당신을 기다립니다.</h4> -->
<!--           <p> -->
<!--             	전북 전주시 ....<br> -->
<!--             	전북대학교 공대 7호관 지하 7008호 Hit IT방<br> -->
<!--           </p> -->
<!--           <p><i class="fa fa-phone"></i> <abbr title="Phone">P</abbr>: (010) 000-0000</p> -->
<!--           <p><i class="fa fa-envelope-o"></i> <abbr title="Email">E</abbr>: <a href="mailto:feedback@startbootstrap.com">회장메일닉네임@gmail.com</a></p> -->
<!--           <p><i class="fa fa-clock-o"></i> <abbr title="Hours">H</abbr>: 월요일 - 일요일: 18:00 PM to 2:00 AM</p> -->
<!--           <ul class="list-unstyled list-inline list-social-icons"> -->
<!--             <li class="tooltip-social facebook-link"><a href="#facebook-page" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook-square fa-2x"></i></a></li> -->
<!--             <li class="tooltip-social linkedin-link"><a href="#linkedin-company-page" data-toggle="tooltip" data-placement="top" title="LinkedIn"><i class="fa fa-linkedin-square fa-2x"></i></a></li> -->
<!--             <li class="tooltip-social twitter-link"><a href="#twitter-profile" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter-square fa-2x"></i></a></li> -->
<!--             <li class="tooltip-social google-plus-link"><a href="#google-plus-page" data-toggle="tooltip" data-placement="top" title="Google+"><i class="fa fa-google-plus-square fa-2x"></i></a></li> -->
<!--           </ul> -->
<!--         </div> -->

<!--       </div>/.row -->

    </div>
<!--     /.container -->

    <div class="container" style="width:100%; margin-top:0px;">
      <hr>
      <footer>
        <div class="row">
          <div class="col-lg-12">
            <p>Copyright &copy; Hit-IT 2014</p>
          </div>
        </div>
      </footer>

    </div><!-- /.container -->

    <!-- JavaScript -->
    <script src="js/jquery-1.10.2.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/modern-business.js"></script>

  </body>
</html>
