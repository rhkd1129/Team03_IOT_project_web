package com.mycompany.project.mqtt;

import java.util.Date;

import org.eclipse.paho.client.mqttv3.IMqttDeliveryToken;
import org.eclipse.paho.client.mqttv3.MqttCallback;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.MqttMessage;

public class MqttPublisher {
	public MqttClient client;
	
	public MqttPublisher() throws Exception{
		//MQTT 클라이언트 생성	
		String clientId = "" + new Date().getTime();
		client = new MqttClient("tcp://localhost:1883", clientId);
		
		client.setCallback(new MqttCallback() {

			@Override
			public void connectionLost(Throwable e) {
				e.printStackTrace();				
			}

			@Override
			public void deliveryComplete(IMqttDeliveryToken token) {
				System.out.print("deliveryComplete: " + new Date());
			}

			@Override
			public void messageArrived(String topic, MqttMessage message) throws Exception {
				
			}
		});
		
		//연결 옵션 객체 생성
		MqttConnectOptions conOpt = new MqttConnectOptions();
		conOpt.setCleanSession(true);
		
		//서버에 접속
		client.connect(conOpt);
	}
	
	//메시지 송신
	public void publish(String topic,String message) throws Exception {
		MqttMessage mqttMessage = new MqttMessage(message.getBytes());
		client.publish(topic, mqttMessage);
	}
	
	public void shutdown() throws Exception {
		client.disconnect();
		client.close();
	}
	
}
