package com.pg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.Properties;

@Controller
public class StartController {

    // ==========================================
    // 1. MAIL SENDER BEAN CONFIGURATION
    // ==========================================
    @Bean
    public JavaMailSender getJavaMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        
        // Setup Gmail SMTP server details
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);
        mailSender.setUsername("sagar@gmail.com");
        
        // IMPORTANT: Use your 16-character Google App Password here
        mailSender.setPassword("aycbwafawkgsvbeqca");

        // Setup the security properties manually
        Properties props = mailSender.getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        
        return mailSender;
    }

    // Spring will automatically inject the Bean we just created above
    @Autowired
    private JavaMailSender mailSender;


    // ==========================================
    // 2. PAGE ROUTING (Your existing mappings)
    // ==========================================
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView root() {
        return new ModelAndView("pages/template/index");
    }

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public ModelAndView index() {
        return new ModelAndView("pages/template/index");
    }
    
    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public ModelAndView about() {
        return new ModelAndView("pages/template/about");
    }
    
    @RequestMapping(value = "/service", method = RequestMethod.GET)
    public ModelAndView service() {
        return new ModelAndView("pages/template/service");
    }
    
    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public ModelAndView contact() {
        return new ModelAndView("pages/template/contact");
    }


    // ==========================================
    // 3. EMAIL SENDING LOGIC (AJAX)
    // ==========================================
    @RequestMapping(value = "/sendEmailAjax", method = RequestMethod.POST)
    @ResponseBody
    public String sendEmailAjax(
            @RequestParam("name") String name,
            @RequestParam("email") String visitorEmail,
            @RequestParam("subject") String subject,
            @RequestParam("message") String message) {
        
        try {
            SimpleMailMessage mailMessage = new SimpleMailMessage();
            
            // From and To are BOTH your email address to ensure reliable delivery
            mailMessage.setFrom("sagar@gmail.com"); 
            mailMessage.setTo("sagar@gmail.com"); 
            
            // Hitting 'Reply' in your inbox will reply directly to the website visitor
            mailMessage.setReplyTo(visitorEmail); 
            
            mailMessage.setSubject("Website Contact: " + subject);
            
            // The visitor's contact information is passed inside the email body
            mailMessage.setText("New message from your website contact form:\n\n" +
                                "Name: " + name + "\n" +
                                "Visitor Email: " + visitorEmail + "\n\n" +
                                "Message:\n" + message);
            
            mailSender.send(mailMessage);
            
            return "SUCCESS"; 
            
        } catch (Exception e) {
            e.printStackTrace();
            return "ERROR"; 
        }
    }
}