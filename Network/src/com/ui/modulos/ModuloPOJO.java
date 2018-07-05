package com.ui.modulos;

public class ModuloPOJO {
	private int idModuloCentral;
	private String serial;
	
	public ModuloPOJO(int idModuloCentral, String serial) {
		this.idModuloCentral = idModuloCentral;
		this.serial = serial;
	}

	public ModuloPOJO(int idModulo, String idTipoModulo, Object idGrupoUsuario, Object idUsuarioCriador,
			Object idComodo, String serial, Object nome, Object descricaoTipoModulo) {
		// TODO Auto-generated constructor stub
	}

	public ModuloPOJO() {
		// TODO Auto-generated constructor stub
	}

	public ModuloPOJO(String serial2) {
		// TODO Auto-generated constructor stub
	}

	public void setSerial(String serial){
		this.serial = serial;
	}
	
	public String getSerial(){
		return this.serial;
	}
	
	public void setIdModuloCentral(int idModuloCentral){
		this.idModuloCentral = idModuloCentral;
	}
	
	public int getIdModuloCentral(){
		return this.idModuloCentral;
	}

	public int getIdModulo() {
		// TODO Auto-generated method stub
		return 0;
	}

	public String getIdTipoModulo() {
		// TODO Auto-generated method stub
		return null;
	}

	public Object getIdGrupoUsuario() {
		// TODO Auto-generated method stub
		return null;
	}

	public Object getIdUsuarioCriador() {
		// TODO Auto-generated method stub
		return null;
	}

	public Object getIdComodo() {
		// TODO Auto-generated method stub
		return null;
	}

	public Object getNome() {
		// TODO Auto-generated method stub
		return null;
	}

	public Object getDescricaoTipoModulo() {
		// TODO Auto-generated method stub
		return null;
	}

}
