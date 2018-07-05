import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;

public class Email {
	public void sendEmail() throws EmailException {
	    
		   SimpleEmail email = new SimpleEmail();
		   //Utilize o hostname do seu provedor de email
		   System.out.println("alterando hostname...");
		   email.setHostName("smtp.gmail.com");
		   //Quando a porta utilizada não é a padrão (gmail = 465)
		   email.setSmtpPort(465);
		   //Adicione os destinatários
		   email.addTo("marcello_cte@hotmail.com", "Jose");
		   //Configure o seu email do qual enviará
		   email.setFrom("firesousa@gmail.com", "Mark");
		   //Adicione um assunto
		   email.setSubject("Test message");
		   //Adicione a mensagem do email
		   email.setMsg("This is a simple test of commons-email");
		   //Para autenticar no servidor é necessário chamar os dois métodos abaixo
		   System.out.println("autenticando...");
		   email.setSSL(true);
		   email.setAuthentication("firesousa@gmail.com", "fire@br6");
		   System.out.println("enviando...");
		   email.send();
		   System.out.println("Email enviado!");
		}
public static void main() throws EmailException{
	Email email = new Email();
	email.sendEmail();
}
	
}
