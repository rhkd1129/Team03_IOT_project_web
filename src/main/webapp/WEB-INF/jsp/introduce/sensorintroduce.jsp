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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/sensorintroduce/sensorintroducecss.css">
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
	  </ul>
	</nav>

	<!--body start---------------------------------------------------------------------------------------  -->
	<div class="bodymainbox">
		<div class="mainbox">
			<img id="backimg" src="${pageContext.request.contextPath}/resource/img/main/6H.jpg">
			<!-- ---------------------------------------------------------------------------- -->
			<div class="showbox1">
		 		<img class="imgimg1" src="${pageContext.request.contextPath}/resource/img/센서/razberrypi.jpg"> 
			<div class="closebox1">X</div>
			</div>

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
					<li class="sub-menu"><a href="${pageContext.request.contextPath}/home/Android.do">안드로이드 뷰 페이지</a></li>
			      </ul>
			</div><!--메뉴전체 판넬 -->
			
			 <!--메뉴 밖에 어두워지는 부분-->
			<div class="panel-overlay"></div>

			
<!-- ---------------------------------------------------------------------------------------------------- -->					
			<div class="bodymain">
			<!-- 센서 이름 및 소개 -->
				<div class="SensorIntroduce">센서 및 부품 소개</div>
				
					<div class="sensorimgbox1">
						<div class="img1-1">
							<img id="img01-1" class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/razberrypi.jpg">
							<div class="introbox">
								<div class="introboxname">[Raspberry Pi]</div>
								<div class="introducet">단일 회로 보드로 만든 소형<br/>
														컴퓨터 전체적인 보드의<br/>
														연산을 함</div>
							</div>
						</div>
						
						<div class="img1-1">
							<img id="img01-2" class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/pcf.jpg">
							<div class="introbox">
								<div class="introboxname">[PCA9685]</div>
								<div class="introducet">여러 서보를 동시에 제어할 수 
														있도록 하는 I2C 통신 지원<br/>
														PWM 출력을 제어</div>
							</div>
						</div>
						
						<div class="img1-1">
							<img id="img01-3" class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/pcf8591.jpg">
							<div class="introbox">
								<div class="introboxname">[PCF8591]</div>
								<div class="introducet">온도와 조도를 읽어와서 디지털 신호를 아날로그 신호로 변경함<br/>
														파장 출력 범위를 조절하여 불빛 조절 가능 역할</div>
							</div>
						</div>
						
						<div class="img1-1">
							<img id="img01-4" class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/dcmoterdirver.jpg">
							<div class="introbox">
								<div class="introboxname">[DC MOTER MODULE]</div>
								<div class="introducet">아두이노를 보조해주는 역할<br/>
														DC모터를 제어해 모터 속도와 회전의 방향을 변경</div>
							</div>
						</div>
						
						<div class="img1-1">
							<img id="img01-5" class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/pca9685.jpg">
							<div class="introbox">
								<div class="introboxname">[CONVERTER]</div>
								<div class="introduce">직류를 직류로 변환시키는 전력변환기</div>
							</div>
						</div>
							
						<div id="img1-1">
							<img id="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/dcmoter.jpg">
							<div class="introbox">
								<div class="introboxname">[DC MOTER Sensor]</div>
								<div class="introduce">자동차 바퀴 모터 센서<br/>
														속력 : 0 ~ 4095KW</div>
							</div>
						</div>											
					</div>					
					
					<div class="sensorimgbox2">
						<div class="img2-1">
							<img class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/buzzer.jpg">
							<div class="introbox">
								<div class="introboxname">[BUZZER Sensor]</div>
								<div class="introduce">경고 울림 센서<br/>
														데시벨 : ?</div>
							</div>
						</div>
						
						<div class="img2-1">
							<img class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/gas.jpg">
							<div class="introbox">
								<div class="introboxname">[GAS Sensor]</div>
								<div class="introduce">가스 측정 센서<br/>
														측정 : 0 ~ 255</div>
							</div>
						</div>
						
						<div class="img2-1">
							<img class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/hcsr04.jpg">
							<div class="introbox">
								<div class="introboxname">[HCSR04 Sensor]</div>
								<div class="introduce">초음파 측정 센서<br/>
														거리 : 0 ~ 3400</div>
							</div>
						</div>
						
						<div class="img2-1">
							<img class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/laser.jpg">
							<div class="introbox">
								<div class="introboxname">[LAZER Sensor]</div>
								<div class="introduce">레이저 발광 센서</div>
							</div>
						</div>
						
						<div class="img2-1">
							<img class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/lcd.jpg">
							<div class="introbox">
								<div class="introboxname">[LCD Sensor]</div>
								<div class="introduce">Text 출력 LCD 센서<br/>
														출력 : 영문</div>
							</div>
						</div>
							
						<div id="img2-1">
							<img class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/photo.jpg">
							<div class="introbox">
								<div class="introboxname">[PHOTO Sensor]</div>
								<div class="introduce">조도 측정 센서</div>
							</div>
						</div>				
					</div>					
										
					<div class="sensorimgbox3">
						<div class="img3-1">
							<img class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/camera.jpg">
							<div class="introbox">
								<div class="introboxname">[CAMERA Sensor]</div>
								<div class="introduce">카메라 센서<br/>
														해상도 : 최하</div>
							</div>
						</div>
						
						<div class="img3-1">
							<img class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/rgbled.jpg">
							<div class="introbox">
								<div class="introboxname">[RGBLED Sensor]</div>
								<div class="introduce">조명 전구 센서<br/>
														색 : 빨강, 초록, 파랑</div>
							</div>
						</div>
						
						<div class="img3-1">
							<img class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/sg90moter.jpg">
							<div class="introbox">
								<div class="introboxname">[SG90 MOTER Sensor]</div>
								<div class="introduce">각도 모터 센서<br/>
														반경 : 0° ~ 210°</div>
							</div>
						</div>
						
						<div class="img3-1">
							<img class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/temperature.jpg">
							<div class="introbox">
								<div class="introboxname">[THERMISTOR Sensor]</div>
								<div class="introduce">온도 측정 센서<br/>
														측정 : -10℃ ~ 50℃</div>
							</div>
						</div>
						
						<div class="img3-1">
							<img class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/power2.jpg">
							<div class="introbox">
								<div class="introboxname">[POWER]</div>
								<div class="introduce">건전지 연결 센서</div>
							</div>
						</div>
							
						<div id="img3-1">
							<img class="imgwidhei" src="${pageContext.request.contextPath}/resource/img/센서/structor.jpg">
							<div id="introbox">
								<div class="introboxname">[STRUCTOR]</div>
								<div id="introduce">자동차 구조 용골</div>
							</div>
						</div>				
					</div>					
			</div>
		</div>
	</div>
</body>
<!-- -------------------------------------------------------------------------------- -->
<script type="text/javascript">
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

/*img click function */
$(".showbox1").hide();

$("#img01-1").click(function(){
	$(".showbox1").slideDown("fast");
});

$(".closebox1").click(function(){
	$(".showbox1").slideUp("fast");
});







</script>
</html>