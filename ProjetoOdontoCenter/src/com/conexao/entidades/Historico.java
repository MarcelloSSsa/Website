package com.conexao.entidades;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
//import java.util.ArrayList;


import com.conexao.BD;


public class Historico {

	private String idCliente;
	private String data;
	private String idPag;
	private Double valor;
	private String valor2;
	
	
	public String getIdPag() {
		return idPag;
	}
	public void setIdPag(String idPag) {
		this.idPag = idPag;
	}
	
	public String getValor2() {
		return valor2;
	}
	public void setValor2(String valor2) {
		this.valor2 = valor2;
	}
	
	public String getIdCliente() {
		return idCliente;
	}
	public void setIdCliente(String idCliente) {
		this.idCliente = idCliente;
	}
	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}

	
	public Double getValor() {
		return valor;
	}
	public void setValor(Double valor) {
		this.valor = valor;
	}
	
	public void inserirDados(String idCliente, String data, String valor)
			throws Exception {
		if (this.validarDados(idCliente,data,valor) ) {
			String comandoSQL;
			BD conexao = new BD();
			
			
			comandoSQL = "insert into historico (id_cli,data,valor) values ('"
					
					+ this.getIdCliente()
					+ "','"
					+ this.getData()
					+ "','"
				    + this.getValor()
				    + "')";
			conexao.execComando(comandoSQL);
			
			
			conexao.fechar();
		} else
			throw new Exception("Erro na validação dos dados!");
		
	}

	// identifica o próximo código de cliente a ser inserido
	
	// valida dados do cliente
	public boolean validarDados(String idCliente, String data, String valor) {
		Double x = Double.parseDouble(valor);
		this.setIdCliente(idCliente);
		this.setData(data);
		this.setValor(x);
				return true;
	}
		
	
	
	
}