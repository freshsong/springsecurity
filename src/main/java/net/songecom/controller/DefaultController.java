package net.songecom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class DefaultController {
	
	@GetMapping("/")
	public String index() {
		System.out.println("index() 가 실행됨");
		return "default";
	}
	
	@ResponseBody //body에 써라는 명령
	@GetMapping("/hello")
	public String hello() {
		System.out.println("Hello()가 실행됨");
		return "Hello~~~ Welcome to Java World!! Have a Gooe Luck";
	}
	
	@ResponseBody //body에 써라는 명령
	@GetMapping(value="/bye", produces="text/html;charset=UTF-8")
	public String bye() {
		System.out.println("bye()가 실행됨");
		return "더이상 배울것이 없습니다. 이제 졸업해도 됩니다";
	}
}
