package net.songecom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {

	//�α���������
	@GetMapping("/home")
	public String home() {
		System.out.println("member/home ����");
		return "home";
	}
	
	@GetMapping("/gallery")
	public String gallery() {
		System.out.println("member/gallery ����");
		return "gallery";
	}
	
	@GetMapping("/bye")
	public String bye() {
		System.out.println("member/bye ����");
		return "bye";
	}
}
