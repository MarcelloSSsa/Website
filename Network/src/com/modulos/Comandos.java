package com.modulos;

public enum Comandos {
	ACK(0),
	CONECTAR(1),
	DESCONECTAR(2),
	ADQUIRIR_TEMPERATURA(3),
	TEMPERATURA_ADQUIRIDA(4),
	LIGAR_RELE(5),
	RELE_LIGADO(6),
	DESLIGAR_RELE(7),
	RELE_DESLIGADO(8),
	STATUS_RELE(9);
	
	public int codigo;
	
	Comandos(int valor) {
		codigo = valor;
	}
	
	public static String nomeComando(int code){
	  for(Comandos e : Comandos.values()){
	    if(code == e.codigo) return e.name();
	  }
	  return null;
	}
	
	public static Enum<Comandos> getEnum(int code){
	  for(Comandos e : Comandos.values()){
	    if(code == e.codigo) return e;
	  }
	  return null;
	}
}
