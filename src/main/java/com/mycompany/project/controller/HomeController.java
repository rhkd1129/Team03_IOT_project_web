package com.mycompany.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.project.mqtt.MqttPublisher;



@Controller
@RequestMapping("/home")
public class HomeController {
	private static final Logger LOGGER =
			LoggerFactory.getLogger(HomeController.class);


	@RequestMapping("/Android.do")
	public String Android() {
		LOGGER.info("실행");
						
		return "home/Android";
	}
	
	@RequestMapping("/main.do")
	public String main() {
		LOGGER.info("실행");
						
		return "home/main";
	}
	
	@RequestMapping("/UIView.do")
	public String Team322() {
		LOGGER.info("UI 디자인 view");		
		return "home/UIView";
	}
	
	@RequestMapping("/joystick.do")
	public String joystick() {
		LOGGER.info("실행");
						
		return "home/joystick";
	}

}
