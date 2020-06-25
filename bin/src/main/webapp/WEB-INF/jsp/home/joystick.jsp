<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" 	href="${pageContext.request.contextPath}/resource/bootstrap/css/bootstrap.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/popper/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resource/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.css">
		<script src="${pageContext.request.contextPath}/resource/jquery-ui/jquery-ui.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/paho-mqtt/1.0.1/mqttws31.min.js" type="text/javascript"></script>
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/highcharts-more.js"></script>
		<script src="https://code.highcharts.com/modules/exporting.js"></script>
		<script src="https://code.highcharts.com/modules/export-data.js"></script>
		<script src="https://code.highcharts.com/modules/accessibility.js"></script>
		<script>
			$(function(){
				client = new Paho.MQTT.Client("192.168.3.163", 61614, new Date().getTime().toString());
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

					var sonicDistance = $("#illumination").attr(
							"value", JSON.parse(message.payloadString).illumination);

					var sonicDistance = $("#gas").attr(
							"value", JSON.parse(message.payloadString).gas);
					
					var tracking = $("#tracking").attr(
							"value", JSON.parse(message.payloadString).tracking);
					
					var speed = $("#speed").attr(
							"value", JSON.parse(message.payloadString).speed);
				}
				
				
			}
			
			function CameraMove(value) {
				var axesValue = "axesValue:" + value;
				var message = new Paho.MQTT.Message(axesValue);
				message.destinationName = "/Controller/Camera/Direction";
				message.qos = 0;

				client.send(message); 
				
			}
			
			function TurnDirection(value) {
				var axesValue = "axesValue:" + value;
				var message = new Paho.MQTT.Message(axesValue);
				message.destinationName = "/Controller/Move/Direction";
				message.qos = 0;

				client.send(message); 
				
			}
			
			function TurnSensor(value) {
				var axesValue = "axesValue:" + value;
				var message = new Paho.MQTT.Message(axesValue);
				message.destinationName = "/Controller/Sensor/Direction";
				message.qos = 0;

				client.send(message); 
			}
			
			function SpeedSetting(value) {  //속도 설정하는거 컨트롤러 6번 축
	            var axesValue = "axesValue:" + value;
	            var message = new Paho.MQTT.Message(axesValue);
	            message.destinationName = "/Controller/Move/Speed";
	            message.qos = 0;

	            client.send(message);
	         } 
		
			function MoveForward(value) {
				var axesValue = "axesValue:" + value;
				console.log(axesValue);
				var message = new Paho.MQTT.Message(axesValue);
				
				message.destinationName = "/Controller/Move/Forward";
				message.qos = 0;

				client.send(message);
				
			}
			
			function MoveBackward(value) {
				var axesValue = "axesValue:" + value;
				var message = new Paho.MQTT.Message(axesValue);
				message.destinationName = "/Controller/Move/Backward";
				message.qos = 0;

				client.send(message);
				
			}
			
			function MoveStop() {
				var message = new Paho.MQTT.Message("stop");
				message.destinationName = "/Controller/Move/Stop";
				message.qos = 0;

				client.send(message);
				
			}
			
			function LaserOn() {
				var message = new Paho.MQTT.Message("on");
				message.destinationName = "/Controller/Laser";
				message.qos = 0;

				client.send(message);
			}
			
			function LaserOff() {
				var message = new Paho.MQTT.Message("off");
				message.destinationName = "/Controller/Laser";
				message.qos = 0;

				client.send(message);
			}
			
			function BuzzerOn() {
				var message = new Paho.MQTT.Message("on");
				message.destinationName = "/Controller/Buzzer";
				message.qos = 0;

				client.send(message);
			}
			
			function BuzzerOff() {
				var message = new Paho.MQTT.Message("off");
				message.destinationName = "/Controller/Buzzer";
				message.qos = 0;

				client.send(message);
			}
			
			function RedOn() {
				var message = new Paho.MQTT.Message("redon");
				message.destinationName = "/Controller/RGBLed";
				message.qos = 0;

				client.send(message);
			}
			
			function GreenOn() {
				var message = new Paho.MQTT.Message("greenon");
				message.destinationName = "/Controller/RGBLed";
				message.qos = 0;

				client.send(message);
			}
			
			function BlueOn() {
				var message = new Paho.MQTT.Message("blueon");
				message.destinationName = "/Controller/RGBLed";
				message.qos = 0;

				client.send(message);
			}
			
			function LedOff() {
				var message = new Paho.MQTT.Message("off");
				message.destinationName = "/Controller/RGBLed";
				message.qos = 0;

				client.send(message);
			}
			
		</script>
	</head>
	<body>
		<img src="${pageContext.request.contextPath}/resource/img/조이스틱/joystick.jpg" style="width:449px">
	</body>
	<script>
		var start;

		window.addEventListener("gamepadconnected", function(e) {
			  var gp = navigator.getGamepads()[e.gamepad.index];
			  gameLoop();
		});
		
		window.addEventListener("gamepaddisconnected", function(e) {
			  cancelRequestAnimationFrame(start);
		});
		
		var interval;

		if (!('ongamepadconnected' in window)) {
		  // No gamepad events available, poll instead.
		  interval = setInterval(pollGamepads, 500);
		}

		function pollGamepads() {
			var gamepads = navigator.getGamepads ? navigator.getGamepads() : (navigator.webkitGetGamepads ? navigator.webkitGetGamepads : []);
		  	for (var i = 0; i < gamepads.length; i++) {
		    	var gp = gamepads[i];
		    	if (gp) {
		      		gameLoop();
		      		clearInterval(interval);
		    }
		  }
		}
		
		function buttonPressed(b) {
			if (typeof(b) == "object") {
			    return b.pressed;
			} return b == 1.0;
		}

		function gameLoop() {
			var gamepads = navigator.getGamepads ? navigator.getGamepads() : (navigator.webkitGetGamepads ? navigator.webkitGetGamepads : []);
			if (!gamepads) {
				return;
		  	}

			var gp = gamepads[0];
			// var camgp = Math.round(gamepads[0].axes[9], 1)
		  	if (gp.axes[1]<-0.1) { //움직임 입력 동시에 받을경우(대각선)가 있어서 axes는 모두 if로 조정합니다
		  		if (buttonPressed(gp.buttons[0])) {
		  			MoveStop()
		  		} else {
		  			MoveForward(gp.axes[1]) //전진
		  		}
		  	} 
			
		  	if (gp.axes[1]>0.1){
		  		if (buttonPressed(gp.buttons[0])) {
		  			MoveStop()
		  		} else {
		  			MoveBackward(gp.axes[1]) //후진
		  		}
		  	} 
		  	
		  	if (gp.axes[0]<-0.05){ // 여기가 axes 
		  		TurnDirection(gp.axes[0])   //왼쪽    
		  	}
		  	
		  	if (gp.axes[0]>0.05){
		  		TurnDirection(gp.axes[0])  //오른쪽       
		  	} 
		  	
		  	if (gp.axes[5]<-0.05){
		  		TurnSensor(gp.axes[5])		  		
		  	}
		  	
		  	if (gp.axes[5]>0.05){
		  		TurnSensor(gp.axes[5])		  		
		  	}
		  	
		  	if (gp.axes[6]){  //6번 축 최대 속도 값 조정
		  		SpeedSetting(gp.axes[6])
		  	}
		  	
		  	if (gp.axes[9]){  
		  		CameraMove(gp.axes[9])
		  	}
		  	
		  	/* if (buttonPressed(gp.buttons[0])) {
		  		gp.axes[1] = 0
		  		MoveStop()
		  	} */
		  	
		  	if (buttonPressed(gp.buttons[1]) == true) {
		  		LaserOn()
		  	} else if (buttonPressed(gp.buttons[1]) == false) {
		  		LaserOff()
		  	}
		  	
		  	if (buttonPressed(gp.buttons[2]) == true) {
		  		BuzzerOn()
		  	} else if (buttonPressed(gp.buttons[2]) == false) {
		  		BuzzerOff()
		  	}
		  	
		  	if (buttonPressed(gp.buttons[3]) == true) {
		  		RedOn()
		  	} else if (buttonPressed(gp.buttons[3]) == false) {
		  		LedOff()
		  	}
		  	
		  	if (buttonPressed(gp.buttons[4]) == true) {
		  		GreenOn()
		  	} else if (buttonPressed(gp.buttons[4]) == false) {
		  		LedOff()
		  	}
		  	
		  	if (buttonPressed(gp.buttons[5]) == true) {
		  		BlueOn()
		  	} else if (buttonPressed(gp.buttons[5]) == false) {
		  		LedOff()
		  	}
		  	
		  	
		  	
			start = requestAnimationFrame(gameLoop);
		}
	</script>
</html>