package model;

import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailSender {
	// sender
	private final String from;
	private final String password;
	private Properties properties;

	public MailSender() {
		from = "#enter your mail";
		password = "enter your application pasword";
		properties = new Properties();
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
	}

	public void SendMail(String email_getter, String title, String content) {
		Authenticator authenticator = new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				// TODO Auto-generated method stub
				return new PasswordAuthentication(from, password);
			}
		};

		Session session = Session.getInstance(properties, authenticator);
		MimeMessage message = new MimeMessage(session);
		try {
			message.addHeader("Content-Type", "text/HTML; charset=utf-8;");
			message.setFrom(from);
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email_getter, false));
			message.setSubject(title);
			message.setContent(content, "text/HTML; charset=UTF-8");
			Transport.send(message);

		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}