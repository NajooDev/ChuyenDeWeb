package vn.edu.hcmuaf.fit.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
@EnableWebSecurity
public class SercurityConfig extends WebSecurityConfigurerAdapter{

	@Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
		.antMatchers("/u/**","/js/**" , "/css/**", "/img/**", "/fonts/**", "/dt/**","/assets/**","/css/icons/material-design-iconic-font//fonts/**", "/vendor/**").permitAll()
		.anyRequest().authenticated()
		.and()
		.formLogin();
		http.csrf().disable();

		
	}
	
	//nơi quản lý tất cả các chứng thực
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		//tạo ra 1 cái session có username và password
		auth
        .inMemoryAuthentication()
        .withUser("admin")
        .password(passwordEncoder().encode("123"))
//        .authorities("ROLE_ADMIN");
        .roles("ADMIN");
	}
}
