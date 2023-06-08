package vn.edu.hcmuaf.fit.service.Imp;

import vn.edu.hcmuaf.fit.model.EmailDetails;
import vn.edu.hcmuaf.fit.service.MailService;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.Timer;
import java.util.TimerTask;

@Service
public class MailServiceImp implements MailService{

	 private String usernameBeingSend = "vnamapp167@gmail.com";
	 private String passwordBeingSend = "enbujhigxdnqcscu";
	 
	 
	@Override
	public void sendSimpleMail(EmailDetails details) {
		// TODO Auto-generated method stub
		Timer timer = new Timer();
        TimerTask task = new TimerTask() {
            @Override
            public void run() {
            	sendMail(details.getRecipient(), details.getSubject(), details.getMsgBody());
            }
        };
        // Lập lịch cho tác vụ thực thi sau 4 giây
        timer.schedule(task, 4000);
	}

	public Session connect() {
        //SEND MAIL SMTP (phải có khi gửi)
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.ssl.trust", "*");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        return Session.getInstance( props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(usernameBeingSend, passwordBeingSend);// email cua minh
            }
        });
    }
	
	public void sendMail(String sendTo, String subject, String textMessage) {
        Session session = connect();
        try {
            MimeMessage mimeMessage = new MimeMessage(session);
            mimeMessage.setFrom(new InternetAddress(usernameBeingSend, "PetSaiGon"));//tên mà mình muốn đặt khi gửi(nếu để không chắc là nó sẽ hiện mail)

//			chỗ sendTo ở dưới là email mình muốn gửi(trong trường hợp này là tự mình gửi cho mình)
            mimeMessage.setRecipients(Message.RecipientType.TO, InternetAddress.parse(sendTo));
            mimeMessage.setHeader("Content-Type", "text/plain; charset=UTF-8");
            mimeMessage.setSubject(subject);
            mimeMessage.setText(textMessage);

            // send message
            Transport.send(mimeMessage);

            System.out.println("Message sent successfully");
        } catch (MessagingException | UnsupportedEncodingException e) {
//			throw new RuntimeException(e);
        	 System.out.println("Message error!");
        }
    }
}
