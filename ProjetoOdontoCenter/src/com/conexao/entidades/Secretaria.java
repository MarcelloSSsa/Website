package com.conexao.entidades;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import com.conexao.BD;


public class Secretaria {

	private String id;
	private String sexo;
	private String senha;
	private String nome;
	private String rua;
	private String bairro;
	private String cidade;
	private String email;
	private String cpf;
	private String numero;
	private String estado;
    
	
	
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

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getRua() {
		return rua;
	}
	public void setRua(String rua) {
		this.rua = rua;
	}
	
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumero() {
		return numero;
	}
	public void setNumero(String numero) {
		this.numero = numero;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public void inserirDados(String nome, String cpf, String sexo, String email,String senha,String rua,
							 String numero, String bairro, String cidade, String estado)
			throws Exception {
		if (this.validarDados(nome,cpf,sexo,email,senha,rua,numero,bairro,cidade,estado) ) {
			String comandoSQL;
			BD conexao = new BD();
			
			
			comandoSQL = "insert into secretaria (nome,cpf,sexo,email,senha,rua,numero,bairro,cidade,estado) values ('"
					
					+ this.getNome()
					+ "','"
					+ this.getCpf()
				    + "','"
				    + this.getSexo()
				    + "','"
				    + this.getEmail()
				    + "','"
					+ this.getSenha()
					+ "','"
					+ this.getRua()
					+ "','"
					+ this.getNumero()
					+ "','"
					+ this.getBairro()
					+ "','"
					+ this.getCidade()
					+ "','"
					+ this.getEstado()
				    + "')";
			conexao.execComando(comandoSQL);
			
			
			conexao.fechar();
		} else
			throw new Exception("Erro na validação dos dados!");
		
	}

	// identifica o próximo código de cliente a ser inserido
	
	// valida dados do cliente
	public boolean validarDados(String nome, String cpf, String sexo, String email,
								String senha, String rua, String numero,
								String bairro, String cidade, String estado) {
		
		this.setNome(nome);
		this.setCpf(cpf);
		this.setSexo(sexo);
		this.setEmail(email);
		this.setSenha(senha);
		this.setRua(rua);
		this.setNumero(numero);
		this.setBairro(bairro);
		this.setCidade(cidade);
		this.setEstado(estado);
		return true;
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
	}
	public void ExcluirAdmin(String nome) throws Exception {
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
}*/

public ArrayList<Secretaria> ConsultarSecretaria() throws Exception{
		
		ArrayList<Secretaria> lista = new ArrayList<Secretaria>();
		
		try{
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "select * from secretaria";
			ResultSet consulta = conexao.execConsulta(comandoSQL);
							
			while(consulta.next()){
				
				Secretaria s = new Secretaria();
				
				s.setNome(consulta.getString("nome"));
				s.setId(consulta.getString("id"));
				
				lista.add(s);
			}
	
			conexao.fechar();
		}
		catch (SQLException e){
			throw new Exception("Erro na leitura dos clientes.");
	}
		return lista;
}

/*
public Cliente ConsultarClienteId(String id) throws Exception{
	
	
	
	
		String comandoSQL;
		BD conexao = new BD();

		Cliente cliente = new Cliente();
		comandoSQL = "select * from cliente where id_cliente='"+id+"'";
		ResultSet consulta = conexao.execConsulta(comandoSQL);
						
		while(consulta.next()){
			
			
			cliente.setNome(consulta.getString("nome"));
			
			
			
	
}
		
		return cliente;
}


	public ArrayList<Cliente> ConsultarClienteNome(String nome) throws Exception{
		
		ArrayList<Cliente> lista = new ArrayList<Cliente>();
		
		try{
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "select * from cliente where nome like"+"'%"+nome+"%'";
			ResultSet consulta = conexao.execConsulta(comandoSQL);
			
			 
				
					
			while(consulta.next()){
				
				Cliente u = new Cliente();
				
				
				u.setId(consulta.getString("id_cliente"));
				u.setNome(consulta.getString("nome"));
				
				lista.add(u);
			}
	
			
		
			
			conexao.fechar();
		}
		catch (SQLException e){
			throw new Exception("Erro na validação dos dados do Admin!");
	}
		return lista;
}
*/
	public Secretaria ValidarAcesso(String id, String senha) throws Exception{
		
			String comandoSQL;
			BD conexao = new BD();
			Secretaria r = new Secretaria();
			
			comandoSQL = "select * from secretaria where id='"+id+"' and senha='"+senha+"'";
			ResultSet consulta = conexao.execConsulta(comandoSQL);
			
			if (consulta.next()) {
				if (consulta.getString("id") != null) {
				
					r.setId(consulta.getString("id"));
					r.setSenha(consulta.getString("senha"));
					
				}
			}
			return r;
	
  }
}