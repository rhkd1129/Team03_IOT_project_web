package com.mycompany.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.project.mqtt.MqttPublisher;



@Controller
@RequestMapping("/introduce")
public class IntroduceController {
	private static final Logger LOGGER =
			LoggerFactory.getLogger(IntroduceController.class);

	
	@RequestMapping("/sensorintroduce.do")
	public String sensorintroduce() {
		LOGGER.info("실행");
						
		return "introduce/sensorintroduce";
	}

	@RequestMapping("/memberintroduce.do")
	public String memberintroduce() {
		LOGGER.info("실행");
						
		return "introduce/memberintroduce";
	}
}
