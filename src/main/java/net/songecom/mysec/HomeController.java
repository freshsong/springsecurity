package net.songecom.mysec;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	@RequestMapping("/user")
	public String user() {
		System.out.println("user() 실행됨");
		return "user";
	}
	
	@RequestMapping("/admin")
	public String admin() {
		System.out.println("admin() 실행됨");
		return "admin";
	}
	
	@RequestMapping("/clogin")
	public String clogin() {
		System.out.println("clogin() 실행됨");
		return "login";
	}
	
	@RequestMapping("/clogout")
	public String clogout() {
		System.out.println("clogout() 실행됨");
		return "logout";
	}
}


