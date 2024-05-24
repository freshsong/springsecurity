package net.songecom.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@EnableWebMvc
@ComponentScan("net") //net으로 시작하는애들 스캔해라


public class MyAppConfig {
	//bean에 등록해야 servlet-context에 세팅한것과 같이 됨
	@Bean
	//파일폴더 세팅하고, 파일세팅작업 하는애 suffix로
	InternalResourceViewResolver viewResolver() {
		
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setPrefix("/WEB-INF/views/"); //이 폴더 읽어와
		viewResolver.setSuffix(".jsp"); //jsp파일 읽어
		
		return viewResolver;
	}
	@Bean //websecurityconfig가 아닌 이 클래스에서 가져와써야함
	PasswordEncoder getPasswordEncoder() {
		//password는 암호화해서 넣어야함,지금은 쌩으로 넣기
	    //return NoOpPasswordEncoder.getInstance(); 		
		//암호화 BCrypt로 사용
		return new BCryptPasswordEncoder();
	}
	
	
	
}
