package com.seed.lib.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Value;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class MailService {
	
	@Value("${mail.send.address}")
	private String mailAddress;
	
	@Value("${mail.send.key}")
	private String mailKey;

	public void sendMail(String email) {
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		
		log.info("@@@@@@@@@@@@@@@@@@@@@ma:{}", mailAddress);
		log.info("@@@@@@@@@@@@@@@@@@@@mk:{}", mailKey);
		
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(mailAddress, mailKey);
			}
		});
		
		String receiver = email; // 메일 받을 주소
		String title = "신청하신 도서 처리 안내 메일입니다.";
		String content = "<div style=\"width:100%\">\r\n"
				+ "  <div style=\"max-width:600px;margin:0 auto;padding:10px 0;font-family:'Roboto',Arial,Helvetica,sans-serif;font-size:16px;line-height:1.5;border:1px solid #e2e2e2\">\r\n"
				+ "    <div align=\"center\" style=\"padding-right:0px;padding-left:0px\" class=\"logo-area\">\r\n"
				+ "      <a href=\"#\" style=\"outline:none\" target=\"_blank\"> <img align=\"center\" border=\"0\" src=\"https://i.imgur.com/kuH9C1G.png\" alt=\"Logo\" title=\"Logo\" style=\"text-decoration-line: none; height: auto; border: none; width: 100%; max-width: 250px; display: block;\" width=\"250\"></a>\r\n"
				+ "    </div>\r\n"
				+ "    <hr style=\"border:0;border-top:solid 1px #e2e2e2;width:90%;margin:10px auto\" class=\"horizontal-line\">\r\n"
				+ "    <div style=\"max-width:90%;margin-left:auto;margin-right:auto;margin-top:40px\" class=\"nomal-paragraph\">\r\n"
				+ "      <div style=\"margin-top:20px\">\r\n"
				+ "        안녕하세요. 씨앗도서관 회원님.\r\n"
				+ "      </div>\r\n"
				+ "    </div>\r\n"
				+ "    <div style=\"max-width:90%;margin-left:auto;margin-right:auto;margin-top:20px;font-size:14px;\" class=\"bullet-point\">\r\n"
				+ "      <ul>\r\n"
				+ "        <li>신청하신 희망도서 관련 변경 사항이 있어 안내 메일 드립니다.</li>\r\n"
				+ "        <li>현재 신청 도서가 입고처리된 상태입니다.</li>\r\n"
				+ "        <li>대출 희망 시 해당 메일로 답변 주시거나 홈페이지에 방문하여 대출 신청하시기 바랍니다.</li>\r\n"
				+ "      </ul>\r\n"
				+ "    </div>\r\n"
				+ "    <div style=\"max-width:90%;margin-left:auto;margin-right:auto;margin-top:20px\" class=\"nomal-paragraph\">\r\n"
				+ "      <div>\r\n"
				+ "        감사합니다.\r\n"
				+ "      </div>\r\n"
				+ "    </div>\r\n"
				+ "  </div>\r\n"
				+ "</div>";
		Message message = new MimeMessage(session);
		try {
			message.setFrom(new InternetAddress(mailAddress, "씨앗도서관", "utf-8"));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
			message.setSubject(title);
			message.setContent(content, "text/html; charset=utf-8");

			Transport.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
