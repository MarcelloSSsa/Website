package com.conexao.email;

import org.apache.commons.mail.EmailException;

import org.apache.commons.mail.SimpleEmail;

public class EnviaEmail  {

	public void Enviar(String endereco, String nome, String assunto, String mensagem) 
						throws Exception
	{
		//e-mail, senha e nome do usuário utilizados pelo SMTP para enviar o e-mail
		String user_mail = "checkmail.brasil@gmail.com";
		String user_pass = "checkemailbrasil";
		String user_name = "Teste de Envio de E-mail";

		SimpleEmail email = new SimpleEmail();
		
		//servidor SMTP para envio do e-mail
        email.setHostName("smtp.gmail.com");   
        
        //dados do destinatário
        try
        {
			email.addTo(endereco, nome);
		} 
        catch (EmailException e) 
		{
			throw new Exception("Endereço de e-mail inválido"+e.getMessage());
		}
       
        //dados do remetente
        try
        {
			email.setFrom(user_mail, user_name);
		} 
        catch (EmailException e) 
        {
			throw new Exception("Remetente Inválido"+e.getMessage());
		}
		
        //assunto do e-mail
        email.setSubject(assunto);   
       
		//mensagem
        try
        {
			email.setMsg(mensagem);
		} 
        catch (EmailException e)
        {
			throw new Exception("Erro na definição da mensagem"+e.getMessage());
		}
		
        email.setAuthentication(user_mail, user_pass);  
        email.setSmtpPort(587);  
        email.setSSL(true);  
        email.setTLS(true);  
        
        //tenta enviar o email
		try 
		{
			email.send();
		} 
		catch (EmailException e)
		{
			throw new Exception("Erro ao enviar e-mail"+e.getMessage());
		}
	}

}