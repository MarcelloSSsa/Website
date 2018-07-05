package com.conexao.entidades;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.math.BigDecimal;



import com.conexao.BD;

public class Servico {
	private String nome;
	private float valorServico;
	private BigDecimal valorServico1;
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public float getValor() {
		return valorServico;
	}
	
	public void setValor (float valorServico){
		this.valorServico = valorServico;
	}
	
	public BigDecimal getValor1() {
		return valorServico1;
	}
	
	public void setValor1 (BigDecimal valorServico1){
		this.valorServico1 = valorServico1;
	}
	
	public void AlterarPreco(String nome,Float valorServico) throws Exception{
		Servico servico=new Servico();
		ArrayList<Servico> listaServico = new ArrayList<Servico>();
		listaServico = servico.ConsultarServico();
		
		for(Servico s: listaServico){
			if(s.getNome().equals(nome)){
				
				if(this.validarDados(nome, valorServico)){
					String comandoSQL;
					BD conexao=new BD();
					comandoSQL= "Update Servico set valor='"+this.getValor()+"' Where nome = '"+nome+"'";
					conexao.execComando(comandoSQL);
					conexao.fechar();
					
				}
				else
					throw new Exception("Erro na validação do valor novo");
			}
	   }
	}
	
	public void inserirDados(String nome, float valorServico)throws Exception {
		
		if (this.validarDados(nome,valorServico) ) {
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "insert into servico (nome,valor) values ('"
					+ this.getNome()
					+ "','"
					+ this.getValor()
				    + "')";
			conexao.execComando(comandoSQL);
			
			conexao.fechar();
		} else
			throw new Exception("Erro na validação dos dados!");

	}
	
	public boolean validarDados(String nome, float valorServico) {

		this.setNome(nome);
		this.setValor(valorServico);

		return true;
	}
	
public ArrayList<Servico> ConsultarServico() throws Exception{
		
		ArrayList<Servico> lista = new ArrayList<Servico>();
		
		try{
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "select * from servico";
			ResultSet consulta = conexao.execConsulta(comandoSQL);
							
			while(consulta.next()){
				
				Servico servico = new Servico();
				
				servico.setNome(consulta.getString("nome"));
				servico.setValor1(consulta.getBigDecimal("valor"));
				
				lista.add(servico);
			}
	
			conexao.fechar();
		}
		catch (SQLException e){
			throw new Exception("Erro na leitura dos serviços.");
	}
		return lista;
}

	
		
}



