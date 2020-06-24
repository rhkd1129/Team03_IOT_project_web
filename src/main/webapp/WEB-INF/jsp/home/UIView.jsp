<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Team3</title>
	<link rel="stylesheet" 	href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
	<script src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
	<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
	<script src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>
	
	<!-- hichart -->
	<script src="https://code.highcharts.com/highcharts.js"></script>
	<script src="https://code.highcharts.com/modules/data.js"></script>
	<script src="https://code.highcharts.com/modules/exporting.js"></script>
	<script src="https://code.highcharts.com/modules/export-data.js"></script>
	<script src="https://code.highcharts.com/modules/accessibility.js"></script>
	<!-- MQTT -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/paho-mqtt/1.0.1/mqttws31.min.js" type="text/javascript"></script>
	<!-- CSS -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/css/UIView.css">
	
	<!-- 핸드폰 확대 or 축소 https://www.w3schools.com/css/css_rwd_viewport.asp -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- Google API master key-->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c4cbc537fd4f8620faa5b7cd5b4ffaad"></script>
	<!-- Goole API library 소환 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c4cbc537fd4f8620faa5b7cd5b4ffaad&libraries=services,clusterer,drawing"></script>
	
	
	
</head>
<body>
	<h5 class="alert alert-success">Team3 - 2</h5>

	<div class="mainbox">
		<img id="Carimg" src="${pageContext.request.contextPath}/resource/img/UIimg/자동차내부.png">

		<!-- 정면 카메라--------------------------------------------------------------------------- -->
		<div class="cameracontroller">
			<img id = "cameraView">
		</div>
		
		<!-- 자동차 내부 이미지--------------------------------------------------------------------------- -->	
		<img id="handimgF" src="${pageContext.request.contextPath}/resource/img/UIimg/HAND.png">
		
		<img id="break" src="${pageContext.request.contextPath}/resource/img/UIimg/break.png">
		<img id="acel" src="${pageContext.request.contextPath}/resource/img/UIimg/acel.png">

		<!-- 센서--------------------------------------------------------------------------- -->
		<div class="sensorcontroller">
			초음파 거리 : <input id="sonicDistance" readonly="readonly" type="text" value="0"><br/>
			온도 : <input id="temperature" readonly="readonly" type="text" value="0"><br/>
			조도 : <input id="illumination" readonly="readonly" type="text" value="0"><br/>
			가스 : <input id="gas" readonly="readonly" type="text" value="0"><br/>
		      속도 : <input id="speed" readonly="readonly" type="text" value="0"><br/> 
			트래킹 : <input id="tracking" readonly="readonly" type="text" value="0"><br/>
		</div>


		<!--하이차트 --------------------------------------------------------------------------------------------- -->
		<figure class="highcharts-figure">
		    <div id="container"></div>
		</figure>
		<!--하이차트 --------------------------------------------------------------------------------------------- -->

		<!--구글 api --------------------------------------------------------------------------------------------- -->
		<div id="map" style="width:500px;height:400px; border: 1px solid black;"></div>
		<!--구글 api --------------------------------------------------------------------------------------------- -->
	</div>

<img class="gifcarmotion1"src="${pageContext.request.contextPath}/resource/img/초고속/ssss23354.gif">
<img class="gifcarmotion2"src="${pageContext.request.contextPath}/resource/img/초고속/sssn.gif">			
<!-- .gifcarmotion1{ -->
<!-- 	margin-top: -500px; -->
<!-- 	float: left; -->
<!-- 	height: 300px; -->
<!-- 	width: 350px; -->
<!-- 	margin-left: 1500px; -->
<!-- } -->

<!-- .gifcarmotion2{ -->
<!-- 	margin-top: -800px; -->
<!-- 	float: left; -->
<!-- 	height: 300px; -->
<!-- 	width: 350px; -->
<!-- 	margin-left: 1500px; -->
<!-- } -->
</body>

<script>
//지도 시작-------------------------------------------------------------------------------------------
var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
var options = { //지도를 생성할 때 필요한 기본 옵션
	center: new kakao.maps.LatLng(37.495081, 127.122498), //지도의 중심좌표.
	level: 3 //지도의 레벨(확대, 축소 정도)37.495222, 127.122230 / 37.495081, 127.122498
};

var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴


//지도에 표시할 원을 생성합니다
var circle = new kakao.maps.Circle({
    center : new kakao.maps.LatLng(37.495081, 127.122498),  // 원의 중심좌표 입니다 
    radius: 7, // 미터 단위의 원의 반지름입니다 
    strokeWeight: 1, // 선의 두께입니다 
    strokeColor: '#FA5858', // 선의 색깔입니다
    strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
    strokeStyle: 'dashed', // 선의 스타일 입니다
    fillColor: '#FF0000', // 채우기 색깔입니다
    fillOpacity: 0.8  // 채우기 불투명도 입니다   
}); 

// 지도에 원을 표시합니다 
circle.setMap(map); 



//지도 끝-------------------------------------------------------------------------------------------
$(function(){
	client = new Paho.MQTT.Client(location.hostname, 61614, new Date().getTime().toString());
	client.onMessageArrived = onMessageArrived;
	client.connect({onSuccess:onConnect});
});

function onConnect() {
	console.log("mqtt broker connected")
	client.subscribe("/sensor");
	client.subscribe("/camerapub");
}

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
		
 		var speed = $("#speed").attr(
				"value", JSON.parse(message.payloadString).speed); 
 		
 		var tem = JSON.parse(message.payloadString).temperature;
		 checktemperature = parseInt(tem);

 		
	}
}

 //바퀴 회전축 이동---------------------------------------
       function TurnLeft() {
           var message = new Paho.MQTT.Message("left");
           message.destinationName = "/Control/Direction";
           message.qos = 0;

           client.send(message); 
        }
        
        function TurnRight() {
           var message = new Paho.MQTT.Message("right");
           message.destinationName = "/Control/Direction";
           message.qos = 0;

           client.send(message); 
        }
        
        function TurnStop() {
           var message = new Paho.MQTT.Message("stop");
           message.destinationName = "/Control/Direction";
           message.qos = 0;

           client.send(message); 
        }
      //모터 회전축 이동---------------------------------------
function MotorStart() {
	var message = new Paho.MQTT.Message("accel");
	message.destinationName = "/Control/Motor";
	message.qos = 0;

	client.send(message); 
}

function MotorStop() {
	console.log("실행")
	var message = new Paho.MQTT.Message("stop");
	message.destinationName = "/Control/Motor";
	message.qos = 0;

	client.send(message);
	console.log("실행 완료")
}

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

var keyValue = {};

function stopInterval(action){
   if(keyValue[87]=='up')
   {
      console.log("앞으로 끝")
      $("#up").css("background-color", "#bd2130");
      $("#up").css("border-color", "#b21f2d");
      keyValue[87] == ''
      MotorBreak();
      $("#acel").css("width","80px");
      $("#acel").css("height","80px");   
   }
   
   if(keyValue[83]=='up')
   {
      console.log("뒤로 끝")
      $("#down").css("background-color","#bd2130");
      $("#down").css("border-color", "#b21f2d");
      keyValue[83] == ''
      MotorBackword()
      $("#break").css("width","100px");
      $("#break").css("height","100px");
      $("#break").css("margin-right","0px"); 
   }
   //우회전 때기
   if(keyValue[68]=='up')
   {
      console.log("우회전 끝")
      $("#right").css("background-color", "#bd2130");
      $("#right").css("border-color", "#5882FA");
      TurnStop()
      $("#handimgF").css("transition", "transform 0.5s")
	  $("#handimgF").css("transform", "rotate(0deg)")
   }
   //좌회전 때기
   if(keyValue[65]=='up')
   {
      console.log("좌회전 끝")
      $("#left").css("background-color", "#bd2130");
      $("#left").css("border-color", "#5882FA");
      TurnStop()
      $("#handimgF").css("transition", "transform 0.5s")
	  $("#handimgF").css("transform", "rotate(0deg)")
   }
   
   if(keyValue[32]=='up')
   {
      console.log("정지")
      $("#stop").css("background-color", "#bd2130");
      $("#stop").css("border-color", "#5882FA");
      MotorStop()
   }
   

   if (keyValue[88]=='up') {
      $("#RGBLEDOFF").css("background-color", "#bd2130");
      $("#RGBLEDOFF").css("border-color", "#5882FA");
   }
   
   
   if (keyValue[90]=='up') {
      $("#RGBLEDON").css("background-color", "#bd2130");
      $("#RGBLEDON").css("border-color", "#5882FA");
   }
}

setInterval(function(action){
   if(keyValue[87]=='down')
   {
      console.log("앞으로")
      $("#up").css("background-color", "#2E64FE");
      $("#up").css("border-color", "#5882FA");
      setInterval(MotorStart(), 100);
      $("#acel").css("width","70px");
      $("#acel").css("height","70px");     
   }
   
   if(keyValue[83]=='down')
   {
      console.log("뒤로")
      $("#down").css("background-color", "#2E64FE");
      $("#down").css("border-color", "#5882FA");
      setInterval(MotorBackword(), 100);
      $("#break").css("width","90px");
      $("#break").css("height","90px"); 
      $("#break").css("margin-right","10px");      
   }

   //우회전 누르기
   if(keyValue[68]=='down')
   {
      console.log("우회전")
      $("#right").css("background-color", "#2E64FE");
      $("#right").css("border-color", "#5882FA");
      setInterval(TurnRight(), 10);
      $("#handimgF").css("transition", "transform 0.5s")
 	  $("#handimgF").css("transform", "rotate(60deg)")
   }   
   //좌회전 누르기
   if(keyValue[65]=='down')
   {
      console.log("좌회전")
      $("#left").css("background-color", "#2E64FE");
      $("#left").css("border-color", "#5882FA");
      setInterval(TurnLeft(), 10);
      
      $("#handimgF").css("transition", "transform 0.5s")
 	  $("#handimgF").css("transform", "rotate(-60deg)")
   }
   
   
   if(keyValue[32]=='down')
   {
      console.log("정지")
      $("#stop").css("background-color", "#2E64FE");
      $("#stop").css("border-color", "#5882FA");
      setInterval(MotorStop(),100);
   }
   
   if (keyValue[90]=='down') {
      $("#RGBLEDON").css("background-color", "#2E64FE");
      $("#RGBLEDON").css("border-color", "#5882FA");
   }
   
   if (keyValue[88]=='down') {
      $("#RGBLEDOFF").css("background-color", "#2E64FE");
      $("#RGBLEDOFF").css("border-color", "#5882FA");
   }      
}, 100);


/* 방향기 start--------------------------------------------------------------------- */
document.addEventListener('keydown', function(event) {
   keyValue[event.keyCode] = 'down';
}, true);

document.addEventListener('keyup', function(event) {   
   keyValue[event.keyCode] = 'up';
   stopInterval(keyValue[event.keyCode])
}, true);

		
/* 온도 차트 start--------------------------------------------------------------------- */
Highcharts.chart('container', {	//checktemperature
    chart: {
        type: 'spline',
        animation: Highcharts.svg, // don't animate in old IE
        marginRight: 10,
        events: {
            load: function () {

                // set up the updating of the chart each second
                var series = this.series[0];
                setInterval(function () {
                    var x = (new Date()).getTime(), // current time
                        y = checktemperature;
                    series.addPoint([x, y], true, true);
                }, 1000);
            }
        }
    },

    time: {
        useUTC: false
    },

    title: {
        text: 'Temperature'
    },

    accessibility: {
        announceNewData: {
            enabled: true,
            minAnnounceInterval: 15000,
            announcementFormatter: function (allSeries, newSeries, checktemperature) {
                if (checktemperature) {
                    return 'New point added. Value: ' + checktemperature.y;
                }
                return false;
            }
        }
    },

    xAxis: {
        type: 'datetime',
        tickPixelInterval: 150
    },

    yAxis: {
        title: {
            text: 'Value'
        },
        plotLines: [{
            value: 0,
            width: 1,
            color: '#808080'
        }]
    },

    tooltip: {
        headerFormat: '<b>{series.name}</b><br/>',
        pointFormat: '{point.x:%Y-%m-%d %H:%M:%S}<br/>{point.y:.2f}'
    },

    legend: {
        enabled: false
    },

    exporting: {
        enabled: false
    },

    series: [{
        name: 'Live Temperature',
        data: (function () {
            // generate an array of random data
            var data = [],
                time = (new Date()).getTime(),
                i;

            for (i = -19; i <= 0; i += 1) {
                data.push({
                    x: time + i * 1000,
                    y: Math.random()
                });
            }
            return data;
        }())
    }]
});		//checktemperature
</script>
</html>