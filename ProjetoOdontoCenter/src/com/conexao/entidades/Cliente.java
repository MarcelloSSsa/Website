package com.conexao.entidades;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



import com.conexao.BD;


public class Cliente {

	private String id;
	private String senha;
	private String nome;
	private String rua;
	private String bairro;
	private String cidade;
	private String email;
	private String cpf;
	private String numero;
	private String estado;
	private String sexo;
	private boolean b;
	
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	
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
			
			
			comandoSQL = "insert into cliente (nome,cpf,sexo,email,senha,rua,numero,bairro,cidade,estado) values ('"
					
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
		
	public boolean AlterarSenha(String id, String senha1, String senha2)
			throws Exception {
		System.out.println("teste2"+id+senha1+senha2);
		
		Cliente usu = new Cliente();
		ArrayList<Cliente> listaUsuario= new ArrayList<Cliente>(); 
		 listaUsuario= usu.ConsultarCliente();
		
		 for(Cliente u: listaUsuario){
		      if(u.getId().equals(id) && u.getSenha().equals(senha1)){
			
		
		if (this.ValidarDados2(id,senha1)) {
			
			String comandoSQL;
			BD conexao = new BD();
			b=false;
			comandoSQL = "Update cliente set senha='"+senha2+"' Where id_cliente = '"+id+"'";
			conexao.execComando(comandoSQL);
			conexao.fechar();
			b=true;
			System.out.println(b+id+senha1);
		   }
		else
			throw new Exception("Erro na validação dos dados do cliente!");
		
		      }
		 }
		return b; 
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
}*/

public ArrayList<Cliente> ConsultarCliente() throws Exception{
		
		ArrayList<Cliente> lista = new ArrayList<Cliente>();
		
		try{
			String comandoSQL;
			BD conexao = new BD();
			
			comandoSQL = "select * from cliente";
			ResultSet consulta = conexao.execConsulta(comandoSQL);
							
			while(consulta.next()){
				
				Cliente cliente = new Cliente();
				
				cliente.setNome(consulta.getString("nome"));
				cliente.setId(consulta.getString("id_cliente"));
				
				lista.add(cliente);
			}
	
			conexao.fechar();
		}
		catch (SQLException e){
			throw new Exception("Erro na leitura dos clientes.");
	}
		return lista;
}


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
	public Boolean ValidarDados2(String id, String senha) throws Exception{
		
		String comandoSQL;
		BD conexao = new BD();
		Cliente cliente= new Cliente();
		System.out.println("teste3"+id+senha);
		comandoSQL = "select * from cliente where id_cliente='"+id+"' and senha='"+senha+"'";
		ResultSet consulta = conexao.execConsulta(comandoSQL);
		
		if (consulta.next()) {
			if (consulta.getString("id_cliente") != null) {
			
				cliente.setId(consulta.getString("id_cliente"));
				cliente.setSenha(consulta.getString("senha"));
				
			}
		}
		return true;

}
}