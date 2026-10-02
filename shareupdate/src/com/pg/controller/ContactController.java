package com.pg.controller;

import java.util.Properties;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes; // Import this!

@Controller
public class ContactController {

    @Bean
    public JavaMailSender getJavaMailSender() {
        JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(587);
        mailSender.setUsername("sagarninghot09@gmail.com");
        mailSender.setPassword("ycbwafawkgsvbeqc"); // App Password

        Properties props = mailSender.getJavaMailProperties();
        props.put("mail.transport.protocol", "smtp");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        return mailSender;
    }

    @Autowired
    private JavaMailSender mailSender;

    @RequestMapping(value = "/contact", method = RequestMethod.GET)
    public ModelAndView contact() {
        return new ModelAndView("pages/template/contact");
    }

    // ==========================================
    // EMAIL SENDING LOGIC (Standard Form Submit)
    // ==========================================
    @RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
    public String sendEmail(@RequestParam("name") String name, 
                            @RequestParam("email") String visitorEmail,
                            @RequestParam("subject") String subject, 
                            @RequestParam("message") String message,
                            RedirectAttributes redirectAttributes) { // Use RedirectAttributes to send messages

        try {
            SimpleMailMessage mailMessage = new SimpleMailMessage();
            mailMessage.setFrom("sagarninghot09@gmail.com");
            mailMessage.setTo("sagarninghot09@gmail.com");
            mailMessage.setReplyTo(visitorEmail);
            mailMessage.setSubject("Website Contact: " + subject);
            mailMessage.setText("New message from your website contact form:\n\n" 
                    + "Name: " + name + "\n"
                    + "Visitor Email: " + visitorEmail + "\n\n" 
                    + "Message:\n" + message);

            mailSender.send(mailMessage);

            // Set the success message to display on the JSP
            redirectAttributes.addFlashAttribute("successMessage", "Thank you! Your message has been sent successfully.");

        } catch (Exception e) {
            e.printStackTrace();
            // Set the error message to display on the JSP
            redirectAttributes.addFlashAttribute("errorMessage", "Sorry, there was an error sending your message. Please try again later.");
        }
        
        // Redirect back to the contact page GET endpoint
        return "redirect:/contact";
    }
}