package com.conexao.entidades;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com.conexao.BD;


public class Dentista {

	private String id;
	private String senha;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}

	/*public void inserirAdmin(String nome, String login, String senha)
			throws Exception {
		if (this.validarDados(nome, login, senha)) {
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "insert into Admin (id,Senha) values ('"+ this.getNome()
					+ "','"
					+ this.getLogin()
				    + "','"
					+ this.getSenha()				    
					+ "')";
			conexao.execComando(comandoSQL);
			conexao.fechar();
		} else
			throw new Exception("Erro na validação dos dados do Admin!");
	}
*/
	// identifica o próximo código de cliente a ser inserido
	
	// valida dados do cliente
	public boolean validarDados(String id, String senha) {
		
		this.setId(id);
		this.setSenha(senha);
		return true;
	}
	
public Dentista retornar(String id) {
		Dentista a = new Dentista();
		a.setId(id);
			return a;
	}
	
	
	/*public void AlterarAdmin(String nome, String login, String senha, String nomeAtual)
			throws Exception {
		if (this.validarDados(id, senha)) {
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "Update admin set nome='"+ this.getNome()+"', login= '"+this.getLogin()+"', senha='"+this.getSenha()+"' Where nome = '"+nomeAtual+"'";
			conexao.execComando(comandoSQL);
			conexao.fechar();
		} else
			throw new Exception("Erro na validação dos dados do Admin!");
	}*/
	public void ExcluirSecretaria(String nome) throws Exception {
		try{
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "delete from Secretaria where nome='"+nome+"'";
			conexao.execComando(comandoSQL);
			conexao.fechar();
		}
		catch (SQLException e){
			throw new Exception("Erro na validação dos dados do Admin!");
	}
}

	public ArrayList<Dentista> ConsultarDentista() throws Exception{
		
		ArrayList<Dentista> lista = new ArrayList<Dentista>();
		
		try{
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "select * from dentista";
			ResultSet consulta = conexao.execConsulta(comandoSQL);
			
			 
				
					
			while(consulta.next()){
				
				Dentista u = new Dentista();
				
				
				u.setId(consulta.getString("id_dentista"));
				u.setSenha(consulta.getString("Senha"));
				
				lista.add(u);
			}
	
			
		
			
			conexao.fechar();
		}
		catch (SQLException e){
			throw new Exception("Erro na validação dos dados do Admin!");
	}
		return lista;
}

	public Dentista ValidarAcesso(String id, String senha) throws Exception{
		
			String comandoSQL;
			BD conexao = new BD();
			Dentista admin= new Dentista();
			
			comandoSQL = "select * from dentista where id_dentista='"+id+"' and senha='"+senha+"'";
			ResultSet consulta = conexao.execConsulta(comandoSQL);
			
			if (consulta.next()) {
				if (consulta.getString("id_dentista") != null) {
				
					admin.setId(consulta.getString("id_dentista"));
					admin.setSenha(consulta.getString("senha"));
					
				}
			}
			return admin;
	
  }
}