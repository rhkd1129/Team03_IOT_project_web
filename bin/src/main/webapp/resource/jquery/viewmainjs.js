/* 영상 출력 전송 start--------------------------------------------------------------------------------------------------------------------------------------- */
$(function(){
	
	client = new Paho.MQTT.Client(location.hostname, 61614 , new Date().getTime.toString());
	//[설명] location.hostname이란 : 192.168.3.210 와같은  IP를 가리키는 코드
	//[설명] location.port or 61614란  web socet이다. (browser는 통신을 할 수없기 때문에 web socet을 사용하여 통신을 한다.)
	//[설명] clientId란 : 사용이유 : 동일한 mqtt를 주면 에러가 난다. / 모두 다른 값으로 지정해줘야한다. 다른값을 지정하려면 제일 편한건 시간!! ->new Date().getTime.toString()그래서 이 코드 사용함
	
	client.onMessageArrived = onMessageArrived;
	//[설명] client.onMessageArrived = onMessageArrived;란 : 콜백함수 실행하기 위해 사용
	client.connect({onSuccess:onConnect});
});
 
	function onConnect() {
		console.log("mqtt broker connected");
	  	client.subscribe("/camerapub");
		client.subscribe("/sensor");
	}
	
	function onMessageArrived(message) {
		if(message.destinationName == "/camerapub"){
			var cameraView = $("#cameraView").attr("src", "data:image/jpg;base64," + message.payloadString);
			console.log(cameraView);
		}
		
		if(message.destinationName == "/sensor"){			
			var HcSr04 = $("#HcSr04").attr("value", JSON.parse(message.payloadString).obstacle);
	 		var photo = $("#Photo").attr("value", JSON.parse(message.payloadString).photoresist); 
	 		var lazer = $("#GAS").attr("value", JSON.parse(message.payloadString).gas);
	 		var lazer = $("#temperature").attr("value", JSON.parse(message.payloadString).Thermistor);
/* 	 		var Tracking = $("#Tracking").attr("value", JSON.parse(message.payloadString).Tracking); */
			var speed = $("#SpeedL").attr("value", JSON.parse(message.payloadString).SpeedL);
			var speed = $("#SpeedR").attr("value", JSON.parse(message.payloadString).SpeedR);
		}
		
	}	
/* 영상 출력 전송 end--------------------------------------------------------------------------------------------------------------------------------------- */

/* 엔진 출력 전송 start--------------------------------------------------------------------------------------------------------------------------------------- */
Highcharts.chart('container1', {

    chart: {
        type: 'gauge',
        plotBackgroundColor: null,
        plotBackgroundImage: null,
        plotBorderWidth: 0,
        plotShadow: false
    },

    title: {
        text: 'Real-time Speed'
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
        max: 200,

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
            to: 120,
            color: '#55BF3B' // green
        }, {
            from: 120,
            to: 160,
            color: '#DDDF0D' // yellow
        }, {
            from: 160,
            to: 200,
            color: '#DF5353' // red
        }]
    },

    series: [{
        name: 'Speed',
        data: [80],
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

            point.update(newVal);

        }, 3000);
    }
});
/* 엔진 출력 전송 end--------------------------------------------------------------------------------------------------------------------------------------- */

/* temperature start -------------------------------*/

/* temperature end -------------------------------*/






