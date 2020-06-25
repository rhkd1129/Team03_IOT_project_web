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

<!-- HICHAR -->
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>

<!-- BOOTSTRAP -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- MQTT -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/CarView2/Carmain2css.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/paho-mqtt/1.0.1/mqttws31.min.js" type="text/javascript"></script>

<!-- Google API master key-->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c4cbc537fd4f8620faa5b7cd5b4ffaad"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c4cbc537fd4f8620faa5b7cd5b4ffaad&libraries=services,clusterer,drawing"></script>

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


			<!--메뉴전체 판넬 -->
			<div class="panel left">
			  <!-- 눌렀을경우 메뉴가 나타나고, 사라지는 부분 -->
			  <a class="ninja-btn" title="menu"><span></span></a>
			  <!-- 메뉴의 내용부분 -->
			      <span class="mo-menu-title">TEAM3 Page</span>
			      <ul>
			        <li class="menu-label"><a href="${pageContext.request.contextPath}/home/main.do">메인 페이지</a></li>
			        <li class="sub-menu"><a href="${pageContext.request.contextPath}/introduce/memberintroduce.do">안드로이드 소개</a></li>
			        <li class="menu-label"><a href="${pageContext.request.contextPath}/introduce/sensorintroduce.do">부품 소개</a></li>
			        <li class="sub-menu"><a href="${pageContext.request.contextPath}/CarView1/Carmain1.do">센서 차트 페이지</a></li>
			        <li class="menu-label"><a href="${pageContext.request.contextPath}/CarView2/Carmain2.do">차량 조종 페이지</a></li>
			        <li class="sub-menu"><a href="${pageContext.request.contextPath}/home/Android.do">안드로이드 뷰 페이지</a></li>
			        <li class="menu-label"><a href="${pageContext.request.contextPath}/home/UIView.do">차량 실험 페이지</a></li>
			      </ul>
			</div><!--메뉴전체 판넬 -->
			
			 <!--메뉴 밖에 어두워지는 부분-->
			<div class="panel-overlay"></div>

<!-- ---------------------------------------------------------------------------------------------------- -->					
			<div class="bodymain">
			<!-- 센서 이름 및 소개 -->
				<div class="Car2Introduce">IOT 차량 조종</div>
				
					<div class="memberimgbox1">
						<img id ="cameraView">					
						<img id="controllimg" src="${pageContext.request.contextPath}/resource/img/투명/투명제거.png">
					
						<!-- 자동차 부품 이미지 -->
						<img id="handimgF" src="${pageContext.request.contextPath}/resource/img/UIimg/HAND.png">
						<img id="break" src="${pageContext.request.contextPath}/resource/img/UIimg/break.png">
						<img id="acel" src="${pageContext.request.contextPath}/resource/img/UIimg/acel.png">
						
						<!-- 1번 레이저 센서 똑딱이 버튼 -->						
						<img id="on" src="${pageContext.request.contextPath}/resource/img/투명/전원on.png">
						<img id="off" src="${pageContext.request.contextPath}/resource/img/투명/전원off.png">
					
						<!-- 2번 부저 센서 똑딱이 버튼 -->						
						<img id="on2" src="${pageContext.request.contextPath}/resource/img/투명/전원on.png">
						<img id="off2" src="${pageContext.request.contextPath}/resource/img/투명/전원off.png">
					
						<!-- 3번 빨파초 센서 똑딱이 버튼 -->						
						<img id="on3" src="${pageContext.request.contextPath}/resource/img/투명/전원on.png">
						<img id="off3" src="${pageContext.request.contextPath}/resource/img/투명/전원off.png">
											
						<!-- 와이퍼 작동  -->
						<img id="wifer1" src="${pageContext.request.contextPath}/resource/img/투명/와이퍼2.png">
						<div class="wifer1"></div>

						<!-- 계기판 작동  -->
						<img id="speedcheck" src="${pageContext.request.contextPath}/resource/img/투명/계기판1.jpg">
						
						<!-- 네비게이션 작동 -->
						<div class="navi">
							<div id="map" class="w3-container w3-center w3-animate-zoom"></div>
						</div>
									
					</div>		<!--	 w3-animate-fading		 -->
			</div>
		</div>
	</div>
<figure class="highcharts-figure1">
    <div id="container1"></div>
</figure>
</body>
<!-- -------------------------------------------------------------------------------- -->
<script type="text/javascript">
//지도 API 시작-------------------------------------------------------------------------------------------
//지도를 담을 영역의 DOM 레퍼런스
var container = document.getElementById('map'); 

//지도를 생성할 때 필요한 기본 옵션
var options = { 
	center: new kakao.maps.LatLng(37.495081, 127.122498), //지도의 중심좌표
	level: 4 //지도의 레벨(확대, 축소 정도)
	//IT 벤쳐타워 위치 : 37.495222, 127.122230 / 37.495081, 127.122498
};

//지도 생성 및 객체 리턴
var map = new kakao.maps.Map(container, options); 

//지도에 표시할 원을 생성
var circle = new kakao.maps.Circle({
  center : new kakao.maps.LatLng(37.495081, 127.122498),  // 원의 중심좌표  
  radius: 7, // 미터 단위의 원의 반지름
  strokeWeight: 1, // 선의 두께
  strokeColor: '#FA5858', // 선의 색깔
  strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명
  strokeStyle: 'dashed', // 선의 스타일 
  fillColor: '#FF0000', // 채우기 색깔
  fillOpacity: 0.8  // 채우기 불투명도  
}); 

//지도에 원을 표시
circle.setMap(map); 
//지도 API 끝-------------------------------------------------------------------------------------------
$("#on").hide();
$("#off").show();

$("#on2").hide();
$("#off2").show();

$("#on3").hide();
$("#off3").show();

// $(".navi").hide();
$("#map").hide();

//네비게이션 띄우기
document.addEventListener('keydown', function(event) {
   if (event.keyCode === 78) {
// 	  $(".navi").show();
      $("#map").show();
   };
}, true);

//네비게이션 끄기
document.addEventListener('keydown', function(event) {
   if (event.keyCode === 66) {
// 	  $(".navi").hide();
      $("#map").hide();      
   };
}, true);

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

/* MQTT------------------------------------------ */
/* MQTT 연결 (광휘컴퓨터) */
$(function(){
	client = new Paho.MQTT.Client("192.168.3.163", 61614, new Date().getTime().toString());
	client.onMessageArrived = onMessageArrived;
	client.connect({onSuccess:onConnect});
});

/* 연결 완료 및 클라이언트 값 구독 */
function onConnect() {
	console.log("mqtt broker connected")
	client.subscribe("/sensor");
	client.subscribe("/camerapub");
}

/* 구독한 메세지 받는 객체 생성 */
function onMessageArrived(message) {
	if(message.destinationName == "/camerapub") {
		var cameraView = $("#cameraView").attr(
				"src", "data:image/jpg;base64,"+message.payloadString);
	}
	
	if(message.destinationName == "/sensor") {
		var sonicDistance = $("#sonicDistance").attr(
				"value", JSON.parse(message.payloadString).sonic_distance);
												
		var temperature = $("#temperature").attr(
				"value", JSON.parse(message.payloadString).temperature);

		var illumination = $("#illumination").attr(
				"value", JSON.parse(message.payloadString).illumination);

		var gas = $("#gas").attr(
				"value", JSON.parse(message.payloadString).gas);
		
		var tracking = $("#tracking").attr(
				"value", JSON.parse(message.payloadString).tracking);
		
		var speed = $("#speed").attr(
				"value", JSON.parse(message.payloadString).speed);
		
		console.log("----------------------------")
		/* 객체 생성 후 View에 뿌려줄 값 int타입으로 변환 */
		/* 가스 */
 		var changegas = JSON.parse(message.payloadString).gas;
		 checkgas = parseInt(changegas);	
		 console.log("가스:"+checkgas)
		 
		/* 조도 */
 		var changeill = JSON.parse(message.payloadString).illumination;
		 checkillumination = parseInt(changeill);
		 console.log("조도:"+checkillumination)
		 
		/* 속력 */
		 var changespeed = JSON.parse(message.payloadString).speed;
	       checkspeed = parseInt(changespeed);      
		 console.log("속도:"+checkspeed)
		 
		/* 온도 */
 		var changetem = JSON.parse(message.payloadString).temperature;
		 checktemperature = parseInt(changetem);
		 console.log("온도:"+checktemperature)
	}
		
}
			 
	/* Rgb 불빛 센서 on */
	function LedOn() {
		
		var message = new Paho.MQTT.Message("ledOn");
		message.destinationName = "/Control/RgbLed";
		message.qos = 0;

		client.send(message);
	}
	/* Rgb 불빛 센서 off */
	function LedOff() {
		
		var message = new Paho.MQTT.Message("ledOff");
		message.destinationName = "/Control/RgbLed";
		message.qos = 0;

		client.send(message);
	}
	/* buzzer on */
	function BuzzerOn() {
		
		console.log("부저실행")
		var message = new Paho.MQTT.Message("buzzerOn");
		message.destinationName = "/Control/Buzzer";
		message.qos = 0;

		client.send(message);
	}
	/* buzzer off */
	function BuzzerOff() {
		
		var message = new Paho.MQTT.Message("buzzerOff");
		message.destinationName = "/Control/Buzzer";
		message.qos = 0;

		client.send(message);
	}
	/* 차량 좌회전 */
	function TurnLeft() {
		
		var message = new Paho.MQTT.Message("left");
		message.destinationName = "/Control/Direction/FrontWheel";
		message.qos = 0;

		client.send(message); 
		
	}
	/* 차량 우회전 */
	function TurnRight() {
		
		var message = new Paho.MQTT.Message("right");
		message.destinationName = "/Control/Direction/FrontWheel";
		message.qos = 0;

		client.send(message); 
		
	}
	/* 차량 정지 */
	function TurnStop() {
		
		var message = new Paho.MQTT.Message("stop");
		message.destinationName = "/Control/Direction/FrontWheel";
		message.qos = 0;

		client.send(message); 
		
	}
	/* 카메라 고개 들기 */
	function CameraUp() {
		
		var message = new Paho.MQTT.Message("up");
		message.destinationName = "/Control/Direction/Camera";
		message.qos = 0;

		client.send(message); 
		
	}
	/* 카메라 고개 내리기 */
	function CameraDown() {
		
		var message = new Paho.MQTT.Message("down");
		message.destinationName = "/Control/Direction/Camera";
		message.qos = 0;

		client.send(message); 
		
	}
	/* 카메라 고개 좌회전 */
	function CameraLeft() {
		
		var message = new Paho.MQTT.Message("left");
		message.destinationName = "/Control/Direction/Camera";
		message.qos = 0;

		client.send(message); 
		
	}
	/* 카메라 고개 우회전 */
	function CameraRight() {
		console.log("실행")
		var message = new Paho.MQTT.Message("right");
		message.destinationName = "/Control/Direction/Camera";
		message.qos = 0;

		client.send(message); 
		console.log("실행 완료")
	}
	/* 카메라 회전 중지 */
	function CameraTurnStop() {
		console.log("실행")
		var message = new Paho.MQTT.Message("stop");
		message.destinationName = "/Control/Direction/Camera";
		message.qos = 0;

		client.send(message); 
		console.log("실행 완료")
	}
	/* 카메라 수평 회전 중지 */
	function CameraHorizonTurnStop() {
		console.log("실행")
		var message = new Paho.MQTT.Message("horizonstop");
		message.destinationName = "/Control/Direction/Camera";
		message.qos = 0;

		client.send(message); 
		console.log("실행 완료")
	}
	/* 모터 start */
	function MotorAccel() {
		var message = new Paho.MQTT.Message("accel");
		message.destinationName = "/Control/Motor";
		message.qos = 0;

		client.send(message);
		
	}
	/* 모터 end */	
	function MotorBreak() {
		var message = new Paho.MQTT.Message("break");
		message.destinationName = "/Control/Motor";
		message.qos = 0;

		client.send(message);
		
	}
	
	function MotorBackword() {
		
		var message = new Paho.MQTT.Message("backword");
		message.destinationName = "/Control/Motor";
		message.qos = 0;

		client.send(message);
		
	}
	/* 레이저 on */
	function laserOn() {
		var message = new Paho.MQTT.Message("on");
		message.destinationName = "/Control/Laser";
		message.qos = 0;

		client.send(message);	   
	}
	/* 레이저 off */
	function laserOff() {
		var message = new Paho.MQTT.Message("off");
		message.destinationName = "/Control/Laser";
		message.qos = 0;

		client.send(message);	   
	}  
	/* lcd 불빛 전송 */
	function lcdSend() {
		
		var lcdcontent = $("#lcdcontent").val();    
		console.log(lcdcontent)
		var message = new Paho.MQTT.Message(lcdcontent);
		message.destinationName = "/Control/Lcd";
		message.qos = 0;

		client.send(message);
	}
	
   /* 키 안에 담는 객체 = 꼭필요 중요★★★★★ --------------------------------------------------------------------- */
	var keyValue = {};
   
   /* 키를 땟을 때 ----------------------------------------------------------------------- */ 
   function stopInterval(action){
	  /* 전진 키 땠을때 */
      if(keyValue[87]=='up')
      { 
    	 console.log(keyValue[2]);
         console.log("앞으로 끝")
         $("#up").css("background-color", "#bd2130");
         $("#up").css("border-color", "#FF0000");
         
         $("#acel").css("width","70px");
         $("#acel").css("height","70px");   
         keyValue[87]=''
         //MotorBreak();
      }
      /* 후진 키 땠을때 */
      if(keyValue[83]=='up')
      {
         console.log("뒤로 끝")
         $("#down").css("background-color","#bd2130");
         $("#down").css("border-color", "#FF0000");
         keyValue[83]=''
         //MotorBackword()
      }
      /* 우회전 키 땠을때 */
      if(keyValue[68]=='up')
      {
         console.log("우회전 끝")
         $("#right").css("background-color", "#bd2130");
         $("#right").css("border-color", "#FF0000");
         
         $("#handimgF").css("transition", "transform 0.5s")
   	  	 $("#handimgF").css("transform", "rotate(0deg)")
         keyValue[68]=''
         TurnStop()
      }
      /* 좌회전 키 땠을때 */
      if(keyValue[65]=='up')
      {
         console.log("좌회전 끝")
         $("#left").css("background-color", "#bd2130");
         $("#left").css("border-color", "#FF0000");
         
         $("#handimgF").css("transition", "transform 0.5s")
   	     $("#handimgF").css("transform", "rotate(0deg)")
         keyValue[65]=''
         TurnStop()
      }
   	  /* 정지? */   
 	  if(keyValue[32]=='up')
      {
         console.log("정지 끝")
         $("#stop").css("background-color", "#bd2130");
         $("#stop").css("border-color", "#FF0000");
         
         $("#break").css("width","90px");
         $("#break").css("height","90px");
         $("#break").css("margin-right","0px"); 
         keyValue[32]=''
         MotorStop()
      }       
      /* 카메라 정지 키 땠을때 */
      if (keyValue[38]=='up') {
    	  console.log("카메라 스톱")
		  $("#up1").css("background-color", "#bd2130");
		  $("#up1").css("border-color", "#FF0000");  
    	  	CameraTurnStop()
		}
      /* 카메라 정지 키 땠을때 */
      if (keyValue[40]=='up') {
    	  	console.log("카메라 스톱")
		  $("#down1").css("background-color", "#bd2130");
		  $("#down1").css("border-color", "#FF0000");  
			CameraTurnStop()
		}
      /* 카메라 좌회전 키 땠을때 */
      if (keyValue[37]=='up') {
    	  console.log("카메라 왼쪽 스톱")
		  $("#left1").css("background-color", "#bd2130");
		  $("#left1").css("border-color", "#FF0000");  
    	  	CameraHorizonTurnStop()
		}
      /* 카메라 우회전 키 땠을때 */
      if (keyValue[39]=='up') {
    	  console.log("카메라 오른쪽 스톱")
		  $("#right1").css("background-color", "#bd2130");
		  $("#right1").css("border-color", "#FF0000");  
    	  	CameraHorizonTurnStop()
		}
      /* 레이저 키 땠을때 */
      if (keyValue[81]=='up') {
	     keyValue[81]=''
	     laserOff()
         $("#Lazer").css("background-color", "#bd2130");
         $("#Lazer").css("border-color", "#FF0000");
         $(".lazerrgb").css("background-color", "#A4A4A4");
         $(".Lazerrgb").css("border-color", "#848484");
         
         $("#off").show();
         $("#on").hide();
	     console.log("삠삠 스탑")
	  }
      /* 부저 키 땠을때 */
      if (keyValue[69]=='up') {
    	  keyValue[69]=''
    	  BuzzerOff()
         $("#Buzzer").css("background-color", "#bd2130");
         $("#Buzzer").css("border-color", "#FF0000");
         $(".buzzerrgb").css("background-color", "#A4A4A4");
         $(".buzzerrgb").css("border-color", "#848484");   
         
         $("#off2").show();
         $("#on2").hide();
    	  console.log("빵빵 스탑")
      }
      /* 정지 키 땠을때 */
      if(keyValue[32]=='up')
      {
         console.log("정지 스탑")
         $("#stop").css("background-color", "#bd2130");
         $("#stop").css("border-color", "#FF0000");
      }
      /* 빨파초 키 땠을때 */
      if(keyValue[82]=='up')
      {
         console.log("빨파초 스탑")
         $("#Rgb").css("background-color", "#bd2130");
         $("#Rgb").css("border-color", "#FF0000");
         $(".rgbrgb").css("background-color", "#A4A4A4");
         $(".rgbrgb").css("border-color", "#848484");  
         
         $("#off3").show();
         $("#on3").hide();
      }
      /* ----------------------------------------------------- */
	   /* 와이퍼1  땠을 때*/
      if(keyValue[77]=='up')
      {
         $(".wifer1").css("transition", "transform 1s");	//조종키
     	 $(".wifer1").css("transform", "rotate(200deg)");

         $("#wifer1").css("transition", "transform 1s");	//와이퍼
    	 $("#wifer1").css("transform", "rotate(-5deg)");
    	 $("#wifer1").css("margin-top", "318px");
  	 }  
      
   }
   /* 키를 눌렀을 때 ------------------------------------------------- */
   setInterval(function(action){
	   /* 와이퍼1  눌렀을 때*/
      if(keyValue[77]=='down')
      {
         $(".wifer1").css("transition", "transform 1s");	//조종키
     	 $(".wifer1").css("transform", "rotate(225deg)");
     	 
         $("#wifer1").css("transition", "transform 1s");	//와이퍼
    	 $("#wifer1").css("transform", "rotate(130deg)");
    	 $("#wifer1").css("transform-origin", "right bottom");
  	 }  
	  
	   /* 전진 키 눌렀을때 */
      if(keyValue[87]=='down')
      {
         console.log("앞으로")
         $("#up").css("background-color", "#2E64FE");
         $("#up").css("border-color", "#0040FF");
         
         $("#acel").css("width","64px");
         $("#acel").css("height","64px"); 
         MotorAccel();
  	 }
      /* 후진 키 눌렀을때 */
      if(keyValue[83]=='down')
      {
         console.log("뒤로")
         $("#down").css("background-color", "#2E64FE");
         $("#down").css("border-color", "#0040FF");     
         MotorBackword();
      }
   
      /* 우회전 키 눌렀을때 */
      if(keyValue[68]=='down')
      {
         console.log("우회전")
         $("#right").css("background-color", "#2E64FE");
         $("#right").css("border-color", "#0040FF");
         
         $("#handimgF").css("transition", "transform 0.5s")
    	 $("#handimgF").css("transform", "rotate(60deg)")
         TurnRight();
      }   
      /* 좌회전 키 눌렀을때 */
      if(keyValue[65]=='down')
      {
         console.log("좌회전")
         $("#left").css("background-color", "#2E64FE");
         $("#left").css("border-color", "#0040FF");
         
         $("#handimgF").css("transition", "transform 0.5s")
    	 $("#handimgF").css("transform", "rotate(-60deg)")
         TurnLeft();
      }
      /* 카메라 위로 키 눌렀을때 */
      if (keyValue[38]=='down') {
    	  console.log("카메라 위로")
         $("#up1").css("background-color", "#2E64FE");
         $("#up1").css("border-color", "#0040FF");	 
    	  	CameraUp()
		}
      /* 카메라 아래 키 눌렀을때 */
      if (keyValue[40]=='down') {
    	  	console.log("카메라 아래로")
         $("#down1").css("background-color", "#2E64FE");
         $("#down1").css("border-color", "#0040FF");	 
			CameraDown()
		}
      /* 카메라 좌회전 키 눌렀을때 */
      if (keyValue[37]=='down') {
    	  	console.log("카메라 왼쪽")
         $("#left1").css("background-color", "#2E64FE");
         $("#left1").css("border-color", "#0040FF");	 
			CameraLeft()
		}
      /* 카메라 우회전 키 눌렀을때 */
      if (keyValue[39]=='down') {
    	  	console.log("카메라 오른쪽")
         $("#right1").css("background-color", "#2E64FE");
         $("#right1").css("border-color", "#0040FF");	 
			CameraRight()
		}
      /* 정지 키 눌렀을때 */
      if(keyValue[32]=='down')
      {
         console.log("정지")
         $("#stop").css("background-color", "#2E64FE");
         $("#stop").css("border-color", "#0040FF");
         
         $("#break").css("width","84px");
         $("#break").css("height","84px"); 
         $("#break").css("margin-right","6px");
         MotorBreak();
      }
      /* 레이저 키 눌렀을때 */
      if (keyValue[81]=='down') {
    	  laserOn()
         $("#Lazer").css("background-color", "#2E64FE");
         $("#Lazer").css("border-color", "#5882FA");
         $(".lazerrgb").css("background-color", "#00FF00");
         $(".Lazerrgb").css("border-color", "#82FA58");

         $("#on").show();
         $("#off").hide();
    	  console.log("삠삠")
      }
      /* 부저 키 눌렀을때 */
      if (keyValue[69]=='down') {
    	  BuzzerOn()
         $("#Buzzer").css("background-color", "#2E64FE");
         $("#Buzzer").css("border-color", "#5882FA");
         $(".buzzerrgb").css("background-color", "#00FF00");
         $(".buzzerrgb").css("border-color", "#82FA58");
         
         $("#on2").show();
         $("#off2").hide();
    	  console.log("빵빵")
      }
      /* 빨파초 키 눌렀을때 */
      if (keyValue[82]=='down') {
         $("#Rgb").css("background-color", "#2E64FE");
         $("#Rgb").css("border-color", "#5882FA");
         $(".rgbrgb").css("background-color", "#00FF00");
         $(".rgbrgb").css("border-color", "#82FA58"); 
         
         $("#on3").show();
         $("#off3").hide();
    	  console.log("빨파초 삐용")
      }
      
   }, 30);

   /* 키 눌렀을 때 이벤트를 실행하겠다 */
   document.addEventListener('keydown', function(event) {
      //event.preventDefault();
      keyValue[event.keyCode] = 'down';
   }, true);
   /* 키 땠을 때 이벤트를 실행하겠다 */
   document.addEventListener('keyup', function(event) {   
	  //event.preventDefault();
      keyValue[event.keyCode] = 'up';
      stopInterval()
   }, true);

   
/* HICHART MENU*********************************************************************************** */
Highcharts.chart('container1', {    
	exporting: { enabled:false},
    chart: {
        type: 'gauge',
        plotBackgroundColor: null,
        plotBackgroundImage: null,
        plotBorderWidth: 0,
        plotShadow: false
    },

    title: {
        text: 'Speed moeter'
    },

    pane: {
        startAngle: -150,
        endAngle: 150,
        background: [{
            backgroundColor: {
                linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
                stops: [
                    [0, '#FFF'],
                    [1, '#333']
                ]
            },
            borderWidth: 0,
            outerRadius: '109%'
        }, {
            backgroundColor: {
                linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
                stops: [
                    [0, '#333'],
                    [1, '#FFF']
                ]
            },
            borderWidth: 1,
            outerRadius: '107%'
        }, {
            // default background
        }, {
            backgroundColor: '#DDD',
            borderWidth: 0,
            outerRadius: '105%',
            innerRadius: '103%'
        }]
    },

    // the value axis
    yAxis: {
        min: 0,
        max: 210,

        minorTickInterval: 'auto',
        minorTickWidth: 1,
        minorTickLength: 10,
        minorTickPosition: 'inside',
        minorTickColor: '#666',

        tickPixelInterval: 30,
        tickWidth: 2,
        tickPosition: 'inside',
        tickLength: 10,
        tickColor: '#666',
        labels: {
            step: 2,
            rotation: 'auto'
        },
        title: {
            text: 'km/h'
        },
        plotBands: [{
            from: 0,
            to: 50,
            color: '#55BF3B' // green
        }, {
            from: 50,
            to: 120,
            color: '#DDDF0D' // yellow
        }, {
            from: 120,
            to: 210,
            color: '#DF5353' // red
        }]
    },

    series: [{
        name: 'Speed',
        data: [checkspeed /20],
        tooltip: {
            valueSuffix: ' km/h'
        }
    }]

},
// Add some life
function (chart) {
    if (!chart.renderer.forExport) {
        setInterval(function () {
            var point = chart.series[0].points[0],
                newVal,
                inc = Math.round((Math.random() - 0.5) * 20);

            newVal = point.y + inc;
            if (newVal < 0 || newVal > 200) {
                newVal = point.y - inc;
            }

            point.update(checkspeed/20);

        }, 200);
    }
});
</script>
</html>