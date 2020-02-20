<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">   
   
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
 
     <!-- Site Metas -->
    <title>HostCloud - Responsive HTML5 Template</title>  
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${ request.ContextPath }resources/css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="${ request.ContextPath }resources/style.css">
    <!-- Colors CSS -->
    <link rel="stylesheet" href="${ request.ContextPath }resources/css/colors.css">
    <!-- ALL VERSION CSS -->
    <link rel="stylesheet" href="${ request.ContextPath }resources/css/versions.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="${ request.ContextPath }resources/css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="${ request.ContextPath }resources/css/custom.css">

    <!-- Modernizer for Portfolio -->
    <script src="${ request.ContextPath }resources/js/modernizer.js"></script>

    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body class="host_version"> 

	<!-- Modal -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header tit-up">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Customer Login</h4>
			</div>
			<div class="modal-body customer-box row">
				<div class="col-md-12">
					<!-- Nav tabs -->
					<ul class="nav nav-tabs">
						<li class="active"><a href="#Login" data-toggle="tab">Login</a></li>
						<li><a href="#Registration" data-toggle="tab">Registration</a></li>
					</ul>
					<!-- Tab panes -->
					<div class="tab-content">
						<div class="tab-pane active" id="Login">
							<form role="form" class="form-horizontal" action="/login.io">
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="id" placeholder="ID" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="exampleInputPassword1" placeholder="PassWord" type="password">
								</div>
							</div>
							<div class="row">
								<div class="col-sm-10">
									<button type="submit" class="btn btn-light btn-radius btn-brd grd1">
										Submit
									</button>
									<a class="for-pwd" href="javascript:;">Forgot your password?</a>
								</div>
							</div>
							</form>
						</div>
						<div class="tab-pane" id="Registration">
							<form role="form" class="form-horizontal" action="/join.io" onsubmit="return joinValidate();">
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" name="id" placeholder="ID" type="text">
									
									<small id="idCheck1" class="form-text text-success" style="display:none;">사용가능한 아이디입니다</small>
									<small id="idCheck2" class="form-text text-danger" style="display:none;">이미 사용중인 아이디입니다</small>
									<small id="idCheck3" class="form-text text-danger" style="display:none;">형식에 맞지 않는 아이디입니다</small>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" name="name" placeholder="Name" type="text">
									
									<small id="idCheck1" class="form-text text-success" style="display:none;">사용가능한 닉네임입니다</small>
									<small id="idCheck2" class="form-text text-danger" style="display:none;">이미 사용중인 닉네임입니다</small>
									<small id="idCheck3" class="form-text text-danger" style="display:none;">형식에 맞지 않는 닉네임입니다</small>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="email" name="email" placeholder="Email" type="email">
									
									<small id="emailCheck1" class="form-text text-success" style="display:none;">사용가능한 이메일입니다</small>
									<small id="emailCheck2" class="form-text text-danger" style="display:none;">이미 사용중인 이메일입니다</small>
									<small id="emailCheck3" class="form-text text-danger" style="display:none;">형식에 맞지 않는 이메일입니다</small>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="mobile" name="mobile" placeholder="Mobile" type="text">
									<button id="mobileBtn" type="submit" class="btn btn-light btn-radius btn-brd grd1">확인</button>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="password" name="password" placeholder="Password" type="password">

									<small id="passwordCheck1" style="display:none;" class="form-text text-danger">형식에 맞지 않습니다</small>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="passwordChek" name="passwordChek" placeholder="Password" type="password">
									
									<small id="passwordCheck2" style="display:none;" class="form-text text-danger">비밀번호가 틀립니다.</small>
									<small id="passwordCheck3" style="display:none;" class="form-text text-success">사용가능한 비밀번호 입니다.</small>
								</div>
							</div>
							<div class="row">							
								<div class="col-sm-10">
									<button type="button" class="btn btn-light btn-radius btn-brd grd1">
										Save &amp; Continue
									</button>
									<button type="button" class="btn btn-light btn-radius btn-brd grd1">
										Cancel</button>
								</div>
							</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	  </div>
	</div>

    <!-- LOADER -->
	<div id="preloader">
		<div class="loading">
			<div class="finger finger-1">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="finger finger-2">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="finger finger-3">
				<div class="finger-item">
				  <span></span><i></i>
				</div>
			</div>
  			<div class="finger finger-4">
				<div class="finger-item">
				<span></span><i></i>
				</div>
			</div>
  			<div class="last-finger">
				<div class="last-finger-item"><i></i></div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->

    <header class="header header_style_01">
        <nav class="megamenu navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="${ pageContext.request.contextPath }/resources/images/logos/crewlogo.PNG" alt="image" style="size: width:60; height:60;"></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a class="active" href="/home.io">Home</a></li>
                        <li><a href="/features.io">회사소개</a></li>
                        <li><a href="/domain.io">기업소식</a></li>
                        <li><a href="/hosting.io">공지사항</a></li>
                        <li><a href="/pricing.io">인재 & 채용</a></li>
                        <li><a href="/contact.io">Contact</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a class="btn-light btn-radius btn-brd log" href="#" data-toggle="modal" data-target="#login"><i class="flaticon-padlock"></i> Customer Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
	<div class="item active">
		<div id="home" class="first-section"
			style="background-image: url('resources/uploads/crew main.PNG');">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-sm-12 text-center">
						<div class="big-tagline">
							<img src="${ pageContext.request.contextPath }/resources/images/logos/crewlogo.PNG" alt="image">
							<h2 data-animation="animated zoomInRight">
								<strong style="color: orangered;">crew</strong> Company
							</h2>
							<p class="lead" data-animation="animated fadeInLeft"> <strong style="color: orangered;">Welcome</strong> Crew Company</p>
							<a data-scroll="" href="#pricing"
								class="btn btn-light btn-radius btn-brd effect-1 slide-btn"
								data-animation="animated fadeInLeft">View Plans</a>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a data-scroll=""
								href="#overviews"
								class="btn btn-light btn-radius btn-brd effect-1 slide-btn"
								data-animation="animated fadeInRight">All Features</a>
						</div>
					</div>
				</div>
				<!-- end row -->
			</div>
			<!-- end container -->
		</div>
		<!-- end section -->
	</div>
	<footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <img src="images/logos/logo-hosting-light.png" alt="">
                            <small>Web Hosting Template</small>
                        </div>
                        <p> Integer rutrum ligula eu dignissim laoreet. Pellentesque venenatis nibh sed tellus faucibus bibendum. Sed fermentum est vitae rhoncus molestie. Cum sociis natoque penatibus et magnis dis montes.</p>
                        <p>Sed fermentum est vitae rhoncus molestie. Cum sociis natoque penatibus et magnis dis montes.</p>
                    </div><!-- end clearfix -->
                </div><!-- end col -->

				<div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Information Link</h3>
                        </div>
                        <ul class="footer-links">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">Pricing</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">Faq</a></li>
							<li><a href="#">Contact</a></li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
				
                <div class="col-md-3 col-sm-3 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Contact Details</h3>
                        </div>

                        <ul class="footer-links">
                            <li><a href="mailto:#">info@yoursite.com</a></li>
                            <li ><a href="#">www.crewCompany.com</a></li>
                            <li>PO Box 16122 Collins Street West Victoria 8007 Australia</li>
                            <li>+61 3 8376 6284</li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->

                <div class="col-md-2 col-sm-2 col-xs-12">
                    <div class="widget clearfix">
                        <div class="widget-title">
                            <h3>Social</h3>
                        </div>
                        <ul class="footer-links">
                            <li><a href="#"><i class="fa fa-facebook"></i> 22.543 Likes</a></li>
                            <li><a href="#"><i class="fa fa-github"></i> 128 Projects</a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i> 12.860 Followers</a></li>
                            <li><a href="#"><i class="fa fa-dribbble"></i> 3312 Shots</a></li>
                            <li><a href="#"><i class="fa fa-pinterest"></i>3331 Pins</a></li>
                        </ul><!-- end links -->
                    </div><!-- end clearfix -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </footer><!-- end footer -->

    <div class="copyrights">
        <div class="container">
            <div class="footer-distributed">
                <div class="footer-left">                   
                    <p class="footer-company-name">All Rights Reserved. &copy; 2018 Design By: <a href="https://html.design/">html design</a> Distributed By: <a href="https://themewagon.com/">ThemeWagon</a></p> 
                </div>

                <div class="footer-right">
                    <form method="get" action="#">
                        <input placeholder="Subscribe our newsletter.." name="search">
                        <i class="fa fa-envelope-o"></i>
                    </form>
                </div>
            </div>
        </div><!-- end container -->
    </div><!-- end copyrights -->

    <a href="#" id="scroll-to-top" class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>

    <!-- ALL JS FILES -->
    <script src="${ request.ContextPath }resources/js/all.js"></script>
    <!-- ALL PLUGINS -->
    <script src="${ request.ContextPath }resources/js/custom.js"></script>
	<!-- <script type="text/javascript">
		  document.addEventListener('DOMContentLoaded', function() {
		  var calendarEl = document.getElementById('calendar');
		  
		  var calendar = new FullCalendar.Calendar(calendarEl, {
		    plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
		    defaultView: 'dayGridMonth',
		    defaultDate: new Date(),
		    header: {
		      left: 'prev,next today',
		      center: 'title',
		      right: ''
		    },
		  });
		  calendar.render();
		});

	</script> -->
	
	<!-- 휴대폰인증 api -->
		  <!-- jQuery -->
		<!-- <script type="text/javascript"
			src="https://code.jquery.com/jquery-1.12.4.min.js">
		</script>
		iamport.payment.js
		<script type="text/javascript"
			src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js">
		</script>
		
		<script>
		  var IMP = window.IMP; 
		  IMP.init("imp90084713");

		  IMP.certification({
			    merchant_uid : 'merchant_' + new Date().getTime() //본인인증과 연관된 가맹점 내부 주문번호가 있다면 넘겨주세요
			}, function(rsp) {
			    if ( rsp.success ) {
			         // 인증성공
			        console.log(rsp.imp_uid);			
			        console.log(rsp.merchant_uid);
			        ㅇ
			        $.ajax({
			                type : 'POST',
			                url : 'https://www.myservice.com/certifications',
			                dataType : 'json',
			                data : {
			                    imp_uid : rsp.imp_uid
			                }
			         }).done(function(){
			           takeResponseAndHandle(rsp)
			         });
			            
			    } else {
			         // 인증취소 또는 인증실패
			        var msg = '인증에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;

			        alert(msg);
			    }
			});

			function takeResponseAndHandle(rsp) {
			    if ( rsp.success ) {
			        // 인증성공
			        console.log(rsp.imp_uid);
			        console.log(rsp.merchant_uid);
			    } else {
			         // 인증취소 또는 인증실패
			        var msg = '인증에 실패하였습니다.';
			        msg += '에러내용 : ' + rsp.error_msg;

			        alert(msg);
			    }
			}
		</script> -->
	
	<!-- 회원가입 정규화 -->
	<script>
	function joinValidate(){
		var id  = $("#sendForm input[name=id]");
		var memPwd  = $("#sendForm input[name=password]");
		var memPwdCheck = $("#sendForm input[name=passwordChek]");
		var memName  = $("#sendForm input[name=name]");
		
		
		
		if(id.val().trim() == ""){
			alert("ID를 입력해주세요.");
			id.focus();
			return false;
		}
		
		if(memPwd.val().trim() == ""){
			alert("비밀번호를 입력해주세요.");
			memPwd.focus();
			return false;
		}
		
		if(memPwdCheck.val().trim() == ""){
			alert("비밀번호를 확인해주세요.");
			memPwdCheck.focus();
			return false;
		}
		
		if(memName.val().trim() == ""){
			alert("이름를 입력해주세요.");
			memName.focus();
			return false;
		}
		
		// ID검사(6글자이상만 입력하게끔)
		var RegId = /^[0-9a-z]{6,}+$/;
		if(!RegId.test(id.val())){
			alert("아이디는 6자리이상 입력하셔야합니다.")
			id.val("").focus();
			return false;
		}
		
		// 비밀번호검사 (6자리~12자리 사이 영문, 특수문자 조합)
		var RegPass = /^[a-zA-Z!@#$%^&*]{6,12}$/;
		if(!RegPass.test(memPwd.val())){
			alert("비밀번호 형식에 맞지 않습니다.");
			memPwd.val("").focus();
			return false;
		}
		
		// 이름검사
		var RegMemname = /^[가-힣]$/;
		if(!RegMemname.test(memName.val())){
			alert("이름을 입력해주세요");
			memName.val("").focus();
			return false;
		}
		
	}
	</script>
	
	
	<!-- ajax으로 검사 -->
		<script>
			var id = false; 
			$("#id").on("keyup", function(){
				var id = $(this).val();
				
				var regExp = /^[A-Za-z0-9]{4,20}$/;	// 영소,대  숫자 4-20자리
				
				if(regExp.test(id)){
					
					$.ajax({
						url:"joinCheckId.io",
						data:{id:id},
						type:"post",
						success:function(result){
							
							if(result == "1"){ //아이디 사용가능
								$("#idCheck1").css("display", "block");
								$("#idCheck2").css("display", "none");
								$("#idCheck3").css("display", "none");
								$("#idCheck1").css({"color":"#1DDB16", "font-weight":"bold"});
								
								id = true;
							}else{ // 아이디 사용불가
								$("#idCheck2").css("display", "block");
								$("#idCheck1").css("display", "none");
								$("#idCheck3").css("display", "none");
								$("#idCheck2").css({"color":"red", "font-weight":"bold"});
								
								$(".box button").attr("disabled", true);
							}
							
							if(id == ""){ 
								$("#idCheck1").css("display", "none");
								$("#idCheck2").css("display", "none");
								$("#idCheck3").css("display", "none");
							}
							
						},
						error:function(result){
							alert("실패!");
						}
						
					});
					
				}else{  // 형식 잘못됨
					
					$("#idCheck1").css("display", "none");
					$("#idCheck2").css("display", "none");
					$("#idCheck3").css("display", "block");
					$("#idCheck3").css({"color":"red", "font-weight":"bold"});
					
					if(id == ""){
						$("#idCheck1").css("display", "none");
						$("#idCheck2").css("display", "none");
						$("#idCheck3").css("display", "none");
					}
				}
				
			});
			
			var emailB = false;
			$("#email").on("keyup", function(){
				var email = $(this).val();
				
				var regExp = /^[\w]{4,20}@[\w]+(\.[\w]+){1,2}$/;
				
				if(regExp.test(email)) {
					
					$.ajax({
						url:"/joinCheckEmail.io",
						data:{email:email},
						type:"post",
						success:function(result){
							if(result == "1"){
								$("#emailCheck1").css("display", "block");
								$("#emailCheck2").css("display", "none");
								$("#emailCheck3").css("display", "none");
								$("#emailCheck1").css({"color":"#1DDB16", "font-weight":"bold"});
								
								email = true;
							}else{
								$("emailCheck3").css("display", "none");
								$("#emailCheck2").css("display", "block");
								$("#emailCheck1").css("display", "none");
								$("#emailCheck2").css({"color":"red", "font-weight":"bold"});
								
							}
							
							if(email == ""){
								$("#emailCheck1").css("display", "none");
								$("#emailCheck2").css("display", "none");
								$("#emailCheck3").css("display", "none");
							}
						},
						error:function(result){
							alert("실패!");
						}
						
					});
				}else{
					$("#emailCheck1").css("display", "none");
					$("#emailCheck2").css("display", "none");
					$("#emailCheck3").css("display", "block");
					$("#emailCheck3").css({"color":"red", "font-weight":"bold"});
					
					if(email == ""){
						$("#emailCheck1").css("display", "none");
						$("#emailCheck2").css("display", "none");
						$("#emailCheck3").css("display", "none");
					}
				}
				
			});
			
			var passB = false;
			$("#password, #passwordChek").on("keyup", function(){
				var password = $("#password").val();
				var passwordChek = $("#passwordChek").val();
				
				var regExp = /^[a-zA-Z0-9!@#$%^&*]{8,16}$/;
				
				//if (regExp.test(pass)) {
					$.ajax({
						url:"/joinCheckPass.io",
						data:{password:password, passwordChek:passwordChek},
						success:function(result){
							if(result == "1"){ //비번맞음
								$("#passwordCheck2").hide();
								$("#passwordCheck3").show();
								passB = true;
							}else{ // 비번틀림
								$("#passwordCheck3").hide();
								$("#passwordCheck2").show();
							}
							
							if(password == "" && passwordChek == ""){
								
							}
						},
						error:function(result){
							alert("실패!");
						}
					});
				//}else{ //형식틀림
					//$("#passwordCheck1").show();
				//}
				
			});
		</script>
	
		
</body>
</html>
