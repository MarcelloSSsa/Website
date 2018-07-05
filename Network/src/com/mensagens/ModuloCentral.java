package com.mensagens;

import java.util.concurrent.BlockingQueue;

import com.ui.modulos.ModuloPOJO;

public class ModuloCentral extends ModuloPOJO{
	
	private BlockingQueue<MensagemModuloCentral> queueParaModulo;
	private BlockingQueue<MensagemModuloCentral> queueParaController;
	
	
	
	public ModuloCentral() {
		super();// TODO Auto-generated constructor stub
	}
	
	
	public ModuloCentral(BlockingQueue<MensagemModuloCentral> queueParaModulo, BlockingQueue<MensagemModuloCentral> queueParaController) {
		this.queueParaModulo = queueParaModulo;
		this.queueParaController = queueParaController;
	}

	public ModuloCentral(BlockingQueue<MensagemModuloCentral> queueParaModulo, BlockingQueue<MensagemModuloCentral> queueParaController, String serial, int idModuloCentral) {
		super(idModuloCentral, serial);
		this.queueParaModulo = queueParaModulo;
		this.queueParaController = queueParaController;
	}
	
	/**
	 * @param idModulo
	 * @param idTipoModulo
	 * @param idGrupoUsuario
	 * @param idUsuarioCriador
	 * @param idComodo
	 * @param serial
	 * @param nome
	 * @param descricaoTipoModuo
	 * @param queue
	 */
	public ModuloCentral(BlockingQueue<MensagemModuloCentral> queueParaModulo, BlockingQueue<MensagemModuloCentral> queueParaController, ModuloPOJO moduloCentral) {
		super(moduloCentral.getIdModulo(), 
				moduloCentral.getIdTipoModulo(), 
				moduloCentral.getIdGrupoUsuario(), 
				moduloCentral.getIdUsuarioCriador(), 
				moduloCentral.getIdComodo(), 
				moduloCentral.getSerial(),
				moduloCentral.getNome(),
				moduloCentral.getDescricaoTipoModulo());
		this.queueParaModulo = queueParaModulo;
		this.queueParaController = queueParaController;
	}





	/**
	 * @param serial
	 * @param queue
	 */
	public ModuloCentral(String serial, BlockingQueue<MensagemModuloCentral> queueParaModulo, BlockingQueue<MensagemModuloCentral> queueParaController) {
		super(serial);
		this.queueParaModulo = queueParaModulo;
		this.queueParaController = queueParaController;
	}


	public BlockingQueue<MensagemModuloCentral> getQueueParaModulo() {
		return queueParaModulo;
	}
	
	public BlockingQueue<MensagemModuloCentral> getQueueParaController() {
		return queueParaController;
	}
	
	
}
