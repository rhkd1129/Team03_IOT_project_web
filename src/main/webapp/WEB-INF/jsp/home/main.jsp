<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TEAM3</title>
<link rel="icon" href="${pageContext.request.contextPath}/resource/img/main/Team3.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
<script src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
<script src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>

<!-- BOOTSTRAP -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<!-- MQTT -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/main/maincss.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/paho-mqtt/1.0.1/mqttws31.min.js" type="text/javascript"></script>
</head>
<body>
	<!--nav start---------------------------------------------------------------------------------------  -->
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	  <!-- Brand -->
	  <img id="logoimg2" src="${pageContext.request.contextPath}/resource/img/main/Team3.png">
	  <div class="TeamName">TEAM3</div>
	  <div class="jumpbox"></div>
	  <!-- Links -->
	  <ul class="navbar-nav">
	    <li class="nav-item">
	      <a class="nav-link" id="link1" href="${pageContext.request.contextPath}/CarView1/Carmain1.do">Carmain1</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" id="link2" href="${pageContext.request.contextPath}/CarView2/Carmain2.do">Carmain2</a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" id="link2" href="${pageContext.request.contextPath}/home/joystick.do">joystick</a>
	    </li>
	  </ul>
	</nav>

	<!--body start---------------------------------------------------------------------------------------  -->
	<div class="bodymainbox">
		<div class="mainbox">
			<img id="backimg" src="${pageContext.request.contextPath}/resource/img/main/6H.jpg">


			<!--메뉴전체 판넬 -->
			<div class="panel left">
			  <!-- 눌렀을경우 메뉴가 나타나고, 사라지는 부분 -->
			  <a class="ninja-btn" title="menu"><span></span></a>
			  <!-- 메뉴의 내용부분 -->
			      <span class="mo-menu-title">TEAM3 Page</span>
			      <ul>
			        <li class="menu-label"><a href="${pageContext.request.contextPath}/home/main.do">메인 페이지</a></li>
			        <li class="sub-menu"><a href="${pageContext.request.contextPath}/introduce/memberintroduce.do">팀원 소개</a></li>
			        <li class="menu-label"><a href="${pageContext.request.contextPath}/introduce/sensorintroduce.do">부품 소개</a></li>
			        <li class="sub-menu"><a href="${pageContext.request.contextPath}/CarView1/Carmain1.do">센서 차트 페이지</a></li>
			        <li class="menu-label"><a href="${pageContext.request.contextPath}/CarView2/Carmain2.do">차량 조종 페이지</a></li>
			        <li class="sub-menu"><a href="${pageContext.request.contextPath}/home/UIView.do">차량 실험 페이지</a></li>
			        <li class="sub-menu"><a href="${pageContext.request.contextPath}/home/Android.do">안드로이드 뷰 페이지</a></li>
			      </ul>
			</div><!--메뉴전체 판넬 -->
			
			 <!--메뉴 밖에 어두워지는 부분-->
			<div class="panel-overlay"></div>

			
			
			<div class="bodymain">
<!-- 				차 이름 및 소개 -->
				<div class="CarIntroduce">
					<div class="Team3Car1">Team3 no.1 Car</div>
					<div class="Team3Car2">Team3 no.2 Car</div>					
				</div>
				
<!-- 				1번차 이미지 슬라이드 -->
				<div class="w3-content w3-section" style="max-width:449px; float: left;">
					<img class="mySlides1" src="${pageContext.request.contextPath}/resource/img/main/차1/TeamCar01.jpg" style="width:449px">
					<img class="mySlides1" src="${pageContext.request.contextPath}/resource/img/main/차1/TeamCar02.jpg" style="width:449px">
					<img class="mySlides1" src="${pageContext.request.contextPath}/resource/img/main/차1/TeamCar03.jpg" style="width:449px">
					<img class="mySlides1" src="${pageContext.request.contextPath}/resource/img/main/차1/TeamCar04.jpg" style="width:449px">
					<img class="mySlides1" src="${pageContext.request.contextPath}/resource/img/main/차1/TeamCar05.jpg" style="width:449px">
					<img class="mySlides1" src="${pageContext.request.contextPath}/resource/img/main/차1/TeamCar06.jpg" style="width:449px">
				</div>

<!-- 				2번차 이미지 슬라이드 -->
				<div class="w3-content w3-section" style="max-width:449px; float: left;">
					<img class="mySlides2" src="${pageContext.request.contextPath}/resource/img/main/차2/TeamCar07.jpg" style="width:449px">
					<img class="mySlides2" src="${pageContext.request.contextPath}/resource/img/main/차2/TeamCar08.jpg" style="width:449px">
					<img class="mySlides2" src="${pageContext.request.contextPath}/resource/img/main/차2/TeamCar09.jpg" style="width:449px">
					<img class="mySlides2" src="${pageContext.request.contextPath}/resource/img/main/차2/TeamCar10.jpg" style="width:449px">
					<img class="mySlides2" src="${pageContext.request.contextPath}/resource/img/main/차2/TeamCar11.jpg" style="width:449px">
					<img class="mySlides2" src="${pageContext.request.contextPath}/resource/img/main/차2/TeamCar12.jpg" style="width:449px">
				</div>						
			</div>						
		</div>						
	</div>
</body>
<!-- -------------------------------------------------------------------------------- -->
<script type="text/javascript">
/* 이미지 슬라이드 script start----------------------------------------------------------- */
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides1");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
//---------------------
var myIndex1 = 0;
carousel2();

function carousel2() {
    var a;
    var s = document.getElementsByClassName("mySlides2");
    for (a = 0; a < s.length; a++) {
       s[a].style.display = "none";  
    }
    myIndex1++;
    if (myIndex1 > s.length) {myIndex1 = 1}    
    s[myIndex1-1].style.display = "block";  
    setTimeout(carousel2, 2000); // Change image every 2 seconds
}

/* 이미지 슬라이드 script end----------------------------------------------------------- */
/* 차량 이름 css */
$(".Team3Car1").mouseover(function(){
	$(".Team3Car1").css("color","#FA5858");
	$(".Team3Car1").css("background-color","#F5D0A9");
});
$(".Team3Car1").mouseout(function(){
	$(".Team3Car1").css("color","black");
	$(".Team3Car1").css("background-color","#E6E6E6");
});
$(".Team3Car2").mouseover(function(){
	$(".Team3Car2").css("color","#FA5858");
	$(".Team3Car2").css("background-color","#F5D0A9");	
});
$(".Team3Car2").mouseout(function(){
	$(".Team3Car2").css("color","black");
	$(".Team3Car2").css("background-color","#E6E6E6");	
});

/* 각각 차 화면 이동 */
$(".Team3Car1").click(function(){
	location.href = "${pageContext.request.contextPath}/CarView1/Carmain1.do"
});
$(".Team3Car2").click(function(){
	location.href = "${pageContext.request.contextPath}/CarView2/Carmain2.do"
});
/* home 화면 이동 */
$("#logoimg2").click(function(){
	location.href = "${pageContext.request.contextPath}/home/main.do"
});
$(".TeamName").click(function(){
	location.href = "${pageContext.request.contextPath}/home/main.do"
});


//menu-------------------------------------
$(document).ready(function(){

	$(document).ready(function() {
   /* 메뉴버튼을 눌렀을때, 오버레이부분을 클릭했을때*/
    $(".ninja-btn, .panel-overlay").click( function() {
      $(".ninja-btn, .panel-overlay, .panel").toggleClass("active"); //해당 영역에 toggleClass를 넣어줍니다
      /* panel overlay가 활성화 되어있는지를 체크합니다. */
      if ($(".panel-overlay").hasClass("active")) {
        $(".panel-overlay").fadeIn();
      } else {
        $(".panel-overlay").fadeOut();
      }
    });

  });

});













</script>
</html>