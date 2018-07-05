package com.mensagens;

import java.util.Locale;
import java.util.concurrent.BlockingQueue;

import javax.swing.plaf.synth.SynthSeparatorUI;

import com.modulos.Comandos;
import com.ui.modulos.ModuloPOJO;
import com.ui.spring.App;

public class MensagemModuloCentral extends ModuloCentral {
	
	private String caminhoModulos;
	private int comando;
	private double valor;
	
	public MensagemModuloCentral(BlockingQueue<MensagemModuloCentral> queue, String serial, String caminhoModulos,
			int comando, double valor, int idModuloBase) {
		super();
		this.setSerial(serial);
		this.caminhoModulos = caminhoModulos;
		this.comando = comando;
		this.valor = valor;
	}

	public MensagemModuloCentral(String serial, String caminhoModulos, int comando, double valor) {
		super();
		this.setSerial(serial);
		this.caminhoModulos = caminhoModulos;
		this.comando = comando;
		this.valor = valor;
	}


	public MensagemModuloCentral(BlockingQueue<MensagemModuloCentral> queueParaModulo, BlockingQueue<MensagemModuloCentral> queueParaController) {
		super(queueParaModulo, queueParaController);
	}

	public String getCaminhoModulos() {
		return caminhoModulos;
	}


	public void setCaminhoModulos(String caminhoModulos) {
		this.caminhoModulos = caminhoModulos;
	}


	public int getComando() {
		return comando;
	}


	public void setComando(int comando) {
		this.comando = comando;
	}


	public double getValor() {
		return valor;
	}


	public void setValor(double valor) {
		this.valor = valor;
	}


	public boolean validaDesconectar(String serial) throws Exception{
		return true;		
		//throw new Exception("Comando CONECTAR inválido!");
	}


	private String validaSerial(String serial) throws Exception{
		if(serial != "" ) return serial;
		throw new Exception("Serial inválido: " + serial);		
	}
	
	private String validaCaminhoModulos(String caminhoModulos) throws Exception{
		if (caminhoModulos != "" && caminhoModulos.length() > 2) return caminhoModulos;
		throw new Exception("CaminhoModulos inválido: " + caminhoModulos);
	}
	
	private int validaComando(String comando) throws Exception{
		if(comando != "" && Comandos.nomeComando(Integer.valueOf(comando)) != null)
			return Integer.valueOf(comando);
		throw new Exception("Comando inválido: " + comando);
	}
	
	private double validaValor(String valor) throws Exception {
		if (valor != "" && Double.valueOf(valor) >= 0) return Double.valueOf(valor);
		throw new Exception("Valor inválido: " + valor);
	}
	
	public MensagemModuloCentral validaMsg(String mensagem) throws Exception
	{
		System.out.println(" -> Validando Mensagem: " + mensagem);
		
		String msg[] = mensagem.split(";");
		if(msg.length != 4) 
			throw new Exception("Falta Campos na mensagem: " + mensagem);
		
		String serial = validaSerial(msg[0]);
		String caminhoModulos = validaCaminhoModulos(msg[1]);
		int comando = validaComando(msg[2]);
		double valor = validaValor(msg[3]);
		
		if(App.DEBUG){
			System.out.println(this.toString());
		}
				
		if(comando == Comandos.CONECTAR.codigo)  validaConectar(serial);
		else if(comando == Comandos.DESCONECTAR.codigo)  validaDesconectar(serial);
		else if(comando == Comandos.ADQUIRIR_TEMPERATURA.codigo)  validaAdquirirTemperatura(serial, caminhoModulos);
		else if(comando == Comandos.TEMPERATURA_ADQUIRIDA.codigo)  validaTemperaturaAdquirida(serial, caminhoModulos, valor);
		else if(comando == Comandos.LIGAR_RELE.codigo)  validaLigarRele(serial, caminhoModulos, valor);
		else if(comando == Comandos.RELE_LIGADO.codigo)  validaReleLigado(serial, caminhoModulos, valor);
		else if(comando == Comandos.DESLIGAR_RELE.codigo)  validaDesligarRele(serial, caminhoModulos, valor);
		else if(comando == Comandos.RELE_DESLIGADO.codigo)  validaReleDesligado(serial, caminhoModulos, valor);
		else if(comando == Comandos.STATUS_RELE.codigo)  validaStatusRele(serial, caminhoModulos, valor);
		else throw new Exception("-- Comando não reconhecido!");	
		
		MensagemModuloCentral mensagemModuloCentral = new MensagemModuloCentral(serial, caminhoModulos, comando, valor);
		
		return mensagemModuloCentral;
		
	}
	
	public boolean validaConectar(String serial) throws Exception{
		return true;		
		//throw new Exception("Comando CONECTAR inválido!");
	}
	
	public boolean validaAdquirirTemperatura(String serial, String caminhoModulos) throws Exception{		
		return true;		
		//throw new Exception("Comando CONECTAR inválido!");
	}
	
	public boolean validaTemperaturaAdquirida(String serial, String caminhoModulos, double valor) throws Exception{		
		return true;		
		//throw new Exception("Comando CONECTAR inválido!");
	}
	
	public boolean validaLigarRele(String serial, String caminhoModulos, double valor) throws Exception{		
		if(valor == 1) return true;		
		throw new Exception("Comando Ligar Rele inválido! O campo VALOR espera 1");
	}
	
	public boolean validaReleLigado(String serial, String caminhoModulos, double valor) throws Exception{		
		if(valor == 1) return true;		
		throw new Exception("Comando Rele Ligado inválido! O campo VALOR espera 1");
	}
	
	public boolean validaDesligarRele(String serial, String caminhoModulos, double valor) throws Exception{		
		if(valor == 0) return true;		
		throw new Exception("Comando Desligar Rele inválido! O campo VALOR espera 0");
	}
	
	public boolean validaReleDesligado(String serial, String caminhoModulos, double valor) throws Exception{		
		if(valor == 0) return true;		
		throw new Exception("Comando Rele Desligado inválido! O campo VALOR espera 0");
	}
	
	public boolean validaStatusRele(String serial, String caminhoModulos, double valor) throws Exception{		
		if(valor == 0 || valor == 1) return true;		
		throw new Exception("Comando Status Rele inválido! O campo VALOR espera 0 ou 1");
	}

	public String toMensagem(){
		return String.format(Locale.US, "%s;%s;%d;%.2f", getSerial(), caminhoModulos, comando, valor);
	}
	
	
	@Override
	public String toString() {
		return "MensagemModuloCentral [caminhoModulos=" + caminhoModulos + ", comando=" + comando + ", valor=" + valor
				+ ", getSerial()=" + getSerial() + "]";
	}

		
	
}
