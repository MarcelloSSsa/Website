package com.modulos;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.Scanner;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

import com.mensagens.ModuloCentral;
import com.ui.modulos.ModuloDAO;
import com.mensagens.MensagemModuloCentral;

public class GerenciadorSockets extends Thread {
	
	private int porta;
	BlockingQueue<ModuloCentral> queueNovosModulos;

	public GerenciadorSockets(int porta, BlockingQueue<ModuloCentral> queueNovosModulos) {
		super();
		this.porta = porta;
		this.queueNovosModulos = queueNovosModulos;
	}

	public void run() {
	
		ServerSocket servidor;
		try {
			servidor = new ServerSocket(this.porta);
		
		    System.out.println("Porta " + porta + " aberta!");
		     
			while (true) {
		
				Socket cliente = servidor.accept();
				
				Thread.sleep(3000);
				if(cliente.getInputStream().available() > 0)
				{
					BlockingQueue<MensagemModuloCentral> queueParaModulo = new LinkedBlockingQueue<MensagemModuloCentral>();
					BlockingQueue<MensagemModuloCentral> queueParaController = new LinkedBlockingQueue<MensagemModuloCentral>();
					
					//Comando: apelido;caminho;comando;valor
					Scanner s = new Scanner(cliente.getInputStream());
					String comandoConectar = s.nextLine();
					MensagemModuloCentral msg = new MensagemModuloCentral(queueParaModulo, queueParaController);
					
					try {
						msg = msg.validaMsg(comandoConectar);
					} catch (Exception e) {
						System.out.println("Verifique a mensagem se está no seguinte formato: Comando: apelido;caminho;comando;valor\r\n");
						continue;
					}				
					
					queueNovosModulos.put(new ModuloCentral(queueParaModulo, queueParaController, ModuloDAO.getInfosModuloBase(msg.getSerial())));
					// cria um objeto que vai tratar a conexao
					TrataModuloCentral moduloCentral  = new TrataModuloCentral(cliente, queueParaModulo, queueParaController, msg.getSerial() );
					
					// cria a thread em cima deste objeto
					Thread t = new Thread(moduloCentral);
					
					// inicia a thread
					t.start();
					
	//				break;
				}
		
			}
			
//			servidor.close();
		
		} catch (IOException | InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
}
