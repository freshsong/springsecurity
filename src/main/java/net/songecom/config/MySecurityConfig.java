package net.songecom.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;

@EnableWebSecurity(debug = true) //잘되는지확인(콘솔로확인) 완성후 debug 삭제
public class MySecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private PasswordEncoder bcryptPasswordEncoder;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	
		//붙여써도 되고 줄바꿈해도됨 , 권한은 role(admin = 모든권한, )
		auth
		.inMemoryAuthentication()
		.withUser("freshsong")
		.password("$2a$10$C/1oP3EGtmyep8KH51DWR.MxbQGPNtd0.KUHDLB/KZZmqy2rWveWu")
		.roles("ADMIN"); //권한중복추가가능 and로
		/*
		.and()
		.withUser("freshsong") //권한추가
		.password("1234")
		*/
		//아래 인코딩에 맞게 가입진행됨
		System.out.println("my password id crypt" + bcryptPasswordEncoder.encode("0715"));
	}
	
	/* myappconfig로 가야함
	@Bean
	PasswordEncoder getPasswordEncoder() {
		//password는 암호화해서 넣어야함,지금은 쌩으로 넣기 (암호화 하지 않으려면 이걸로쓰면됨)
	    //return NoOpPasswordEncoder.getInstance(); 
		
		//암호화 BCrypt로 사용
		return new BCryptPasswordEncoder();
	
	}
	*/
	

	//첫페이지는 보여지게 공개
	@Override
	protected void configure(HttpSecurity http) throws Exception{
		http
		 .authorizeRequests()  //승인요청   .anyRequest() 모든요청
		 
		 /* 아래처럼써도 되지만 한번에 써도됨 member밑에
		 .antMatchers("/").permitAll()  //진입 페이지는 공개
		 .antMatchers("/hello").permitAll()
		 .antMatchers("/bye").permitAll()
		 */
		 .antMatchers("/member/**").authenticated() //멤버폴더는 인증해야(/member는 멤버폴더만, /member/**멤버폴더내 하위폴더)
		 .anyRequest().permitAll() //통으로세팅가능
		 .and()
		 .formLogin().loginPage("/clogin").loginProcessingUrl("/process-login")
		 .and()
		 .httpBasic()
		 .and()
		 .logout();
	}
}
