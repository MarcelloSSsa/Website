package com.mensagens;

public class MensagemController {

	private String mensagem;
	
	public MensagemController(String mensagem) {
		super();
		this.mensagem = mensagem;
	}


	public String getMensagem() {
		return mensagem;
	}

	public void setMensagem(String mensagem) {
		this.mensagem = mensagem;
	}
}
