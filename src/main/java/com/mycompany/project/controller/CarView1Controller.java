package com.mycompany.project.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/CarView1")
public class CarView1Controller {
	private static final Logger LOGGER =
			LoggerFactory.getLogger(CarView2Controller.class);

	
	@RequestMapping("/Carmain1.do")
	public String Carmain1() {
		LOGGER.info("실행");
						
		return "CarView1/Carmain1";
	}
	


}
