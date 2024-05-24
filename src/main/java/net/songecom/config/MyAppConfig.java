package net.songecom.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
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
}
