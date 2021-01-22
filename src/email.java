import javax.mail.PasswordAuthentication;
import java.util.logging.Level;
import java.util.Properties;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;



public class email 
{
	String to;
	String subject;
	String text;
	
	//constructor
	public email(String to, String subject,String text)
	{
		this.to = to;
		this.subject= subject;
		this.text= text;
		
	}
	public void sendemail() throws Exception
	{
		System.out.println("=======mail========");
		final String username ="shivanimihir06@gmail.com";
		final String password="Shivanimihir0623";
		
		Properties props = new Properties();
		props.put("mail.smtp.auth", true);
		props.put("mail.smtp.starttls.enable", true);
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		
		Session session = Session.getInstance(props,new javax.mail.Authenticator()
				{
			protected PasswordAuthentication getPasswordAuthentication()
			{
				return new PasswordAuthentication(username, password);
			}
	});
		
		Message message = new MimeMessage(session);
		message.setFrom(new InternetAddress(username));
		message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
		message.setSubject(subject);
		message.setText(text);
		
		Transport.send(message);
		System.out.println("Done");
	
}
}
