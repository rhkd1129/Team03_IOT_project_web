package com.mycompany.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/CarView2")
public class CarView2Controller {
	private static final Logger LOGGER =
			LoggerFactory.getLogger(CarView2Controller.class);

	
	@RequestMapping("/Carmain2.do")
	public String Carmain2() {
		LOGGER.info("실행");
						
		return "CarView2/Carmain2";
	}
	


}
