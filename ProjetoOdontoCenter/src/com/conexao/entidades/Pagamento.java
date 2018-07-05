package com.conexao.entidades;

import java.sql.ResultSet;
import java.sql.SQLException;
//import java.util.ArrayList;


import com.conexao.BD;


public class Pagamento {

	private String idCliente;
	private String servico;
	private String data;
	private String idPag;
	private Double valor;
	private String valor2;
	
	public String getServico() {
		return servico;
	}
	public void setServico(String servico) {
		this.servico = servico;
	}
	
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
	
	public void inserirPagamento(String id, String data, String valor2)
			throws Exception {
		if (this.validarDados(id,data,valor2) ) {
			String comandoSQL;
			BD conexao = new BD();
			
			
			comandoSQL = "insert into pagamento (id_cli,data,valor) values ('"
					
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
	public boolean validarDados(String id, String data, String valor2) {
		double converte = Double.parseDouble(valor2);
		this.setIdCliente(id);
		this.setData(data);
		this.setValor(converte);
		
				return true;
	}
		
	public void AlterarPagamento(String id, String valor)
			throws Exception {
		
			String comandoSQL;
			BD conexao = new BD();
			Double valor2= Double.parseDouble(valor);
			//System.out.println(valor);
			comandoSQL = "Update pagamento set valor='"+valor2+"'  Where id_cli = '"+id+"'";
			conexao.execComando(comandoSQL);
			conexao.fechar();
		} 
	/*public void ExcluirAdmin(String nome) throws Exception {
		try{
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "delete from Admin where nome='"+nome+"'";
			conexao.execComando(comandoSQL);
			conexao.fechar();
		}
		catch (SQLException e){
			throw new Exception("Erro na validação dos dados do Admin!");
	}
}
*/
	public Cliente ConsultarCliente(String id) throws Exception{
		Cliente cliente = new Cliente();
		try{
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "select nome from cliente where id_cliente = "+id;
			ResultSet consulta = conexao.execConsulta(comandoSQL);
			
			 
				
					
			
				
				cliente.setId(consulta.getString("id_cliente"));
				
				
				
			
	
			
		
			
			conexao.fechar();
		}
		catch (SQLException e){
			throw new Exception("Erro na validação dos dados do Admin!");
	}
		return cliente;
}

	
	public Pagamento ConsultarPagamento(String id) throws Exception{
		Pagamento p = new Pagamento();
		try{
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "select valor from pagamento where id_cli = '"+id+"'";
			ResultSet consulta = conexao.execConsulta(comandoSQL);
			
						
				p.setValor2(consulta.getString("valor"));
				

			conexao.fechar();
		}
		catch (SQLException e){
			throw new Exception("Erro pagamento");
	}
		return p;
}
	
	public Pagamento Retornar(String id) throws Exception{
		Pagamento p = new Pagamento();
		
		p.setValor2((id));
			
		return p;
}	
	
	public Pagamento Retornar2(String id) throws Exception{
		Pagamento p = new Pagamento();
		
		p.setValor2((id));
			
		return p;
}	
	
	public Cliente ValidarAcesso(String id, String senha) throws Exception{
		
			String comandoSQL;
			BD conexao = new BD();
			Cliente cliente= new Cliente();
			
			comandoSQL = "select * from cliente where id_cliente='"+id+"' and senha='"+senha+"'";
			ResultSet consulta = conexao.execConsulta(comandoSQL);
			
			if (consulta.next()) {
				if (consulta.getString("id_cliente") != null) {
				
					cliente.setId(consulta.getString("id_cliente"));
					cliente.setSenha(consulta.getString("senha"));
					
				}
			}
			return cliente;
	
  }
	
	
	
	
}