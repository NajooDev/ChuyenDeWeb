package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.model.EmailDetails;

public interface MailService {
	 void sendSimpleMail(EmailDetails details);
}
