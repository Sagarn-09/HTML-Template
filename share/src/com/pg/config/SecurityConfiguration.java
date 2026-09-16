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
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		  System.out.println("configureGlobalSecurity");
		auth.inMemoryAuthentication().withUser("bill").password("abc123").roles("USER");
		auth.inMemoryAuthentication().withUser("admin").password("root123").roles("ADMIN");
		auth.inMemoryAuthentication().withUser("dba").password("root123").roles("ADMIN","DBA");
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
	  System.out.println("configure");
	 /* http.authorizeRequests()
	  	.antMatchers("/", "/home").permitAll()
	  	.antMatchers("/rfid/**").access("hasRole('ADMIN')")
	 //	.antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")
	 //	.and().formLogin().loginPage("/login")
	 // .usernameParameter("ssoId").passwordParameter("password")
	  	.and().csrf().csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse());
	 // .and().exceptionHandling().accessDeniedPage("/Access_Denied");
	 //  http.csrf().csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse());
	  */
//	  http
//      .csrf().disable()
//      //    .csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse()) // Use CookieCsrfTokenRepository for REST APIs
//      //    .ignoringAntMatchers("/rfid/**")
//      //    .and()
//      .authorizeRequests()
//          .antMatchers("/rfid/**").authenticated() // Require authentication for API endpoints
//          .anyRequest().permitAll() // Allow access to other endpoints without authentication
//          .and()
//      .httpBasic();
	  
	 // http      .headers()          .contentSecurityPolicy("default-src 'self'; script-src 'self' https://apis.google.com");
	//  http .headers().contentSecurityPolicy("default-src 'unsafe-inline'");
	  
	  
	  
	   http
       .csrf().csrfTokenRepository(CookieCsrfTokenRepository.withHttpOnlyFalse()) // Disable CSRF protection for simplicity
     .ignoringAntMatchers("/rfid/**").and().authorizeRequests()
           .antMatchers("/rfid/**").authenticated() // Require authentication for API endpoints
           .anyRequest().permitAll() // Allow access to other endpoints without authentication
           .and()
       .httpBasic(); // Use basic authentication
	  
	}
	
	 @Override
	 public void configure(WebSecurity web) throws Exception {
	        web.ignoring().antMatchers("/resources/**", "/assets/**", "/css/**", "/js/**", "/img/**","/icons/**","/fonts/**").anyRequest();
	 }
}
