package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.entity.EmailDetails;

public interface MailService {
	 String sendSimpleMail(EmailDetails details);
}
