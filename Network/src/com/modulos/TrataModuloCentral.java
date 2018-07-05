package com.modulos;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Scanner;
import java.util.concurrent.BlockingQueue;

import com.mensagens.MensagemModuloCentral;

public class TrataModuloCentral  extends Thread{
	
	private Socket cliente;
	private final BlockingQueue<MensagemModuloCentral> queueParaModulo;
	private final BlockingQueue<MensagemModuloCentral> queueParaController;
	private String serial;
	private int idModuloBase;
	
	
	public TrataModuloCentral(Socket cliente, BlockingQueue queueParaModulo, BlockingQueue queueParaController, String serial) {
		super();
		this.cliente = cliente;
		this.queueParaModulo = queueParaModulo;
		this.queueParaController = queueParaController;
		this.serial = serial;
	}


	public void run()
	{
		System.out.println("[Thread] Modulo: " + this.serial + " - Thread Criada");
		MensagemModuloCentral msg;
		
		
		try {
			Scanner s = new Scanner(cliente.getInputStream());
			PrintWriter enviarParaModulo = new PrintWriter(cliente.getOutputStream(), true);
			int contador = 0;
			while(true){
				
				// Se o modulo mandou alguma mensagem
				if(cliente.getInputStream().available() > 0)
				{
					System.out.println("[Thread "+ serial +"] Mensagem Recebida do Modulo Central: ");
					String mensagem = s.nextLine();
					msg = new MensagemModuloCentral(queueParaModulo ,queueParaController);
					
					try {
						msg = msg.validaMsg(mensagem);
						queueParaController.put(msg);
						
						
					} catch (Exception e) {
						e.printStackTrace();
						continue;
					}	
				}
				// Se o usuário deseja mandar algum comando ao modulo
				else if(queueParaModulo.size() > 0)
				{
					System.out.print("[Thread "+ serial +"] Mensagem da Queue: ");
					while ((msg = (MensagemModuloCentral) queueParaModulo.poll()) != null) {
						System.out.println(Comandos.nomeComando(msg.getComando()));
						enviarParaModulo.print(msg.toMensagem());
					}					
				}
				// Se nenhuma das atividades acima aconteceu, pingar o módulo para saber
				// o estado do socket
				else
				{
					contador++;
					
					System.out.println("[Thread "+ serial +"] Enviado para Modulo: " + contador);
					
					//Se a tentativa de escrever no socket der erro, significa que o modulo se desconectou
					enviarParaModulo.println(contador);
					if (enviarParaModulo.checkError())
					{
						System.out.println("[Thread "+ serial +"] Modulo: " + this.serial + " - Modulo Central fechou a conexãoo!");
						queueParaController.put(new MensagemModuloCentral(this.serial, "", Comandos.DESCONECTAR.codigo, 0));
						break;
					}
				}
			
				Thread.sleep(3000);
				
			}
			
			s.close();
			cliente.close();
		    
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
		}

		
		
	}

}
