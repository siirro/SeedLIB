package com.seed.lib.mail;

import lombok.AllArgsConstructor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
@AllArgsConstructor
public class EmailService {

	    private JavaMailSender mailSender;
	    private static final String FROM_ADDRESS = "dksekdms3710@gmail.com";

	    public void mailSend(EmailVO emailVO) {
	        SimpleMailMessage message = new SimpleMailMessage();
	        message.setTo(emailVO.getAddress());
	        message.setFrom(EmailService.FROM_ADDRESS);
	        message.setSubject(emailVO.getTitle());
	        message.setText(emailVO.getMessage());

	        mailSender.send(message);
	    }

}
