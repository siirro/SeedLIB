package com.seed.lib.mail;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


public class EmailCotroller {
	
	

	@Controller
	@AllArgsConstructor
	public class MailController {
	    private final EmailService mailService;

	    @GetMapping("/mail")
	    public String dispMail() {
	        return "mail";
	    }

	    @PostMapping("/mail")
	   public void execMail(EmailVO emailVO) {
	    mailService.mailSend(emailVO);
	    }
	}
}

