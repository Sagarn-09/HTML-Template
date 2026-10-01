package com.pg.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("bill").password("{noop}abc123").roles("USER");
		auth.inMemoryAuthentication().withUser("admin").password("{noop}root123").roles("ADMIN");
		auth.inMemoryAuthentication().withUser("dba").password("{noop}root123").roles("ADMIN", "DBA");
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		// Updated CSP to allow Bootstrap, jQuery, inline styles, and data URIs
		http.csrf().csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse())
//				.ignoringAntMatchers("/rfid/**").
				.ignoringAntMatchers("/rfid/**", "/sendEmailAjax")
				.and().authorizeRequests().antMatchers("/rfid/**").authenticated() 
				.anyRequest().permitAll() // Allow access to other endpoints without authentication
				.and().httpBasic(); // Use basic authentication
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**", "/resource/**", "/assets/**", "/css/**", "/js/**", "/img/**");
	}
}