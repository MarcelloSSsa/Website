package com.modulos;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

import com.mensagens.ModuloCentral;
import com.ui.modulos.ModuloDAO;
import com.ui.modulos.ModuloPOJO;
import com.ui.modulos.medidas.MedidaDAO;
import com.mensagens.MensagemController;
import com.mensagens.MensagemModuloCentral;

public class CentralComunicacaoModulosCentral {

	private static List<ModuloCentral> modulosConectados = new ArrayList<ModuloCentral>();
	private static BlockingQueue<ModuloCentral> queueNovosModulos;
	private static BlockingQueue<MensagemModuloCentral> queueController;
	
	public static BlockingQueue<ModuloCentral> getQueueNovosModulos() {
		return queueNovosModulos;
	}

	public static BlockingQueue<MensagemModuloCentral> getQueueController() {
		return queueController;
	}
	
	public static boolean isModuloCentralConectado (int idUsuarioGrupo)
	{
		ModuloPOJO moduloBase = ModuloDAO.getInfosModuloBase(idUsuarioGrupo);
		
		Iterator<ModuloCentral> i = modulosConectados.iterator();
		while (i.hasNext()) {
			
			ModuloCentral moduloConectado = i.next();
			
			if(moduloConectado.getSerial().equals(moduloBase.getSerial()))
			{
				return true;
			}

		}
		
		return false;
	}
	
	public void init() throws InterruptedException {
		
		queueNovosModulos= new LinkedBlockingQueue<ModuloCentral>();
		queueController = new LinkedBlockingQueue<MensagemModuloCentral>();
		ModuloCentral msgNovoModulo;
		MensagemModuloCentral msgModuloCentral;
		MensagemModuloCentral msgController;
		
		
		GerenciadorSockets gerSockets = new GerenciadorSockets(12347,  queueNovosModulos);
		// cria a thread em cima deste objeto
		Thread t = new Thread(gerSockets);		
		// inicia a thread
		t.start();
		
		
		System.out.println("[Central Comunicação] Aguardando requisições: ");
		while(true)
		{
			//Verifica se algum módulo se conectou
			while ((msgNovoModulo = (ModuloCentral) queueNovosModulos.poll()) != null) {
				System.out.println("[Central Comunicação] Novo modulo conectado: "+ msgNovoModulo.getSerial());
				modulosConectados.add(msgNovoModulo);				
	        }
			
			//Verifica se existe algum comando a ser enviado aos módulos
			while ((msgController = (MensagemModuloCentral) queueController.poll()) != null) {
				
				Iterator<ModuloCentral> i = modulosConectados.iterator();
				while (i.hasNext()) {					
					ModuloCentral moduloConectado = i.next();					
					if(moduloConectado.getSerial().equals(msgController.getSerial()))
					{
						System.out.println("[Central Comunicação] Mensagem do Controller: "+ msgController.toMensagem());							
						moduloConectado.getQueueParaModulo().add(msgController);
						break;
					}	
				}			
			}
			
			//Verifica se algum módulo mandou alguma coisa
			if(modulosConectados.size() > 0)
			{				
				Iterator<ModuloCentral> i = modulosConectados.iterator();
				while (i.hasNext()) {
					
					ModuloCentral mensagemCentralComunicacao = i.next();
					
					while ((msgModuloCentral = (MensagemModuloCentral) mensagemCentralComunicacao.getQueueParaController().poll()) != null) {
						System.out.println("[Central Comunicação] Módulo: " + mensagemCentralComunicacao.getSerial() + " - Mensagem do módulo: " + Comandos.nomeComando(msgModuloCentral.getComando()));
						if(msgModuloCentral.getComando() == Comandos.DESCONECTAR.codigo)
						{
							i.remove();
						}
						else if (msgModuloCentral.getComando() == Comandos.RELE_DESLIGADO.codigo)
						{
							
						}
						else if (msgModuloCentral.getComando() == Comandos.TEMPERATURA_ADQUIRIDA.codigo)
						{
							MedidaDAO.insereMedidaTemperaturaPeloSerial(msgModuloCentral.getSerial(), -1, (float) msgModuloCentral.getValor());
						}
			        }	
				}
			}			
			
			Thread.sleep(1000);
		}		
	}
	

}
